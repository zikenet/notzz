part of 'note_watcher_bloc.dart';

@freezed
abstract class NoteWatcherState with _$NoteWatcherState {
  const factory NoteWatcherState.initial() = _Initial;
  const factory NoteWatcherState.loading() = _Loading;
  const factory NoteWatcherState.success(KtList<Note> notes) = _Success;
  const factory NoteWatcherState.failure(RequestFailure noteFailure) = _Failure;
}
