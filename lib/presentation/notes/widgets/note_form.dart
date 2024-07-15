import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notzz/applicaiton/note/note_form/note_form_bloc.dart';
import 'package:notzz/domain/note/note.dart';
import 'package:notzz/injection.dart';

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
              title: const Text('Hello world'),
            ),
            body: Center(
              child: Container(
                color: Colors.blue,
              ),
            ),
            bottomNavigationBar: Container(
              height: 40,
              color: Colors.yellow,
            ),
          );
        },
      ),
    );
  }
}
