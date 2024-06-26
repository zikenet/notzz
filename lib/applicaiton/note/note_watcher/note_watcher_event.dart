part of 'note_watcher_bloc.dart';

@freezed
abstract class NoteWatcherEvent with _$NoteWatcherEvent {
  const factory NoteWatcherEvent.watchAll() = _WatchAll;
  const factory NoteWatcherEvent.noteStateChanged(
    Either<RequestFailure, KtList<Note>> notes,
  ) = _NoteStateChanged;
}
