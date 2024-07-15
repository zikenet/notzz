import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:notzz/domain/note/note.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notzz/domain/note/value_objects.dart';
import 'package:notzz/domain/core/value_objects.dart' as noteTitle;
import 'package:notzz/domain/core/request_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  NoteFormBloc() : super(NoteFormState.initial()) {
    on<NoteFormEvent>(_onNoteFormEvent);
  }

  Future<void> _onNoteFormEvent(NoteFormEvent event, Emitter emit) async {
    await event.map(
      initialize: (event) async {
        emit(
          event.initialNoteOption.fold(
            () => state,
            (initialNote) => state.copyWith(
              note: initialNote,
              isEditing: true,
            ),
          ),
        );
      },
      changeBody: (event) async {
        emit(
          state.copyWith(
            note: state.note.copyWith(
              body: NoteBody(event.bodyStr),
            ),
            status: none(),
          ),
        );
      },
      changeTitle: (event) async {
        emit(
          state.copyWith(
            note: state.note.copyWith(
              title: noteTitle.Title(event.titleStr),
            ),
            status: none(),
          ),
        );
      },
      changeColor: (event) async {
        emit(
          state.copyWith(
            note: state.note.copyWith(
              color: noteTitle.CardColor(event.cardColor),
            ),
            status: none(),
          ),
        );
      },
      save: (event) async {},
    );
  }
}
