import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notzz/injection.dart';
import 'package:flutter/material.dart';
import 'package:notzz/domain/note/note.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:notzz/presentation/core/widgets/title_bar.dart';
import 'package:notzz/presentation/core/widgets/action_button.dart';
import 'package:notzz/applicaiton/note/note_form/note_form_bloc.dart';
import 'package:notzz/presentation/notes/widgets/quill_controller_hook.dart';

class NoteForm extends StatelessWidget {
  final Note? note;
  const NoteForm({
    super.key,
    this.note,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          getIt<NoteFormBloc>()..add(NoteFormEvent.initialize(optionOf(note))),
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('hello World'),
            ),
            body: const FormBody(),
          );
        },
      ),
    );
  }
}

class FormHeader extends StatelessWidget implements PreferredSizeWidget {
  const FormHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(65.0);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(
      builder: (context, state) {
        return TitleBar(
          onChangeHandler: (value) {
            context.read<NoteFormBloc>().add(NoteFormEvent.changeTitle(value));
          },
          formContent: state.isEditing
              ? state.note.title.getOrCrash()
              : state.note.title.value.fold(
                  (_) => '',
                  (title) => title,
                ),
          height: preferredSize.height,
          title: state.isEditing
              ? state.note.title.getOrCrash()
              : state.note.title.value.fold(
                  (_) => 'Title',
                  (title) => title,
                ),
          operations: <Widget>[
            ActionButton(
              onTapHandler: () {},
              child: const Icon(Icons.palette_outlined),
            ),
            ActionButton(
              onTapHandler: () {
                FocusManager.instance.primaryFocus?.unfocus();
                if (state.note.failureOption.isNone()) {
                  context.read<NoteFormBloc>().add(const NoteFormEvent.save());
                } else {
                  Flushbar(
                    backgroundColor: Colors.black.withOpacity(0.75),
                    message: 'Title and/or Body cannot be empty.',
                    icon: Icon(
                      Icons.info,
                      size: 28.0,
                      color: Colors.yellow[300],
                    ),
                    duration: const Duration(seconds: 3),
                    margin: const EdgeInsets.all(8),
                    borderRadius: BorderRadius.circular(12),
                  ).show(context);
                }
              },
              child: const Icon(Icons.save_rounded),
            ),
          ],
        );
      },
    );
  }
}

class FormBody extends HookWidget {
  const FormBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final quillController = useQuilController();
    quillController.addListener(() {
      context.read<NoteFormBloc>().add(
            NoteFormEvent.changeBody(
                jsonEncode(quillController.document.toDelta().toJson())),
          );
    });
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        quillController.document =
            Document.fromJson(jsonDecode(state.note.body.getOrCrash()));
      },
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: QuillEditor.basic(
                configurations: QuillEditorConfigurations(
                  padding: const EdgeInsets.all(10),
                  placeholder: "Content",
                  controller: quillController,
                  autoFocus: true,
                  sharedConfigurations: const QuillSharedConfigurations(
                    locale: Locale('en'),
                  ),
                ),
              ),
            ),
            QuillToolbar.simple(
              configurations: QuillSimpleToolbarConfigurations(
                toolbarSize: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                ),
                controller: quillController,
                multiRowsDisplay: false,
                showAlignmentButtons: false,
                showBackgroundColorButton: false,
                showClearFormat: false,
                showDirection: false,
                showJustifyAlignment: false,
                showRightAlignment: false,
                showLeftAlignment: false,
                showCenterAlignment: false,
                showSearchButton: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
