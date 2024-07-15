part of 'note_form_bloc.dart';

@freezed
abstract class NoteFormState implements _$NoteFormState {
  const factory NoteFormState({
    required Note note,
    required bool displayError,
    required bool isSaving,
    required bool isEditing,
    required Option<Either<RequestFailure, Unit>> status,
  }) = _NoteFormState;

  factory NoteFormState.initial() => NoteFormState(
        note: Note.empty(),
        displayError: false,
        isSaving: false,
        isEditing: false,
        status: none(),
      );
}
