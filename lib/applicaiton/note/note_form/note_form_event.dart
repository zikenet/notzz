part of 'note_form_bloc.dart';

@freezed
abstract class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.initialize(Option<Note> initialNoteOption) =
      _Initialize;
  const factory NoteFormEvent.changeBody(String bodyStr) = _ChangeBody;
  const factory NoteFormEvent.changeTitle(String titleStr) = _ChangeTitle;
  const factory NoteFormEvent.changeColor(Color cardColor) = _ChangeColor;
  const factory NoteFormEvent.save() = _Save;
}
