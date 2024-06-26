import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:notzz/domain/note/note.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_quill/flutter_quill.dart';

QuillController useQuilController({Note? note}) {
  return use(_QuilControllerHook(note));
}

class _QuilControllerHook extends Hook<QuillController> {
  const _QuilControllerHook(this.note);
  final Note? note;

  @override
  _QuilControllerHookState createState() =>
      _QuilControllerHookState(note: note);
}

class _QuilControllerHookState
    extends HookState<QuillController, _QuilControllerHook> {
  final Note? note;
  late QuillController _controller;

  _QuilControllerHookState({required this.note});

  @override
  void initHook() {
    if (note != null) {
      _controller = QuillController(
        document: Document.fromJson(jsonDecode(note!.body.getOrCrash())),
        selection: const TextSelection.collapsed(offset: 0),
      );
    } else {
      _controller = QuillController.basic();
      _controller.addListener(() {
        // context.read<NoteFormBloc>().add(NoteFormEvent.changeBody(
        // jsonEncode(_controller.document.toDelta().toJson())));
      });
    }
  }

  @override
  QuillController build(BuildContext context) => _controller;

  @override
  void dispose() => _controller.dispose();
}
