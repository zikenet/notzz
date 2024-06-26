import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:notzz/domain/note/note.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notzz/domain/core/request_failure.dart';
import 'package:notzz/domain/note/i_note_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _noteRepository;
  late final StreamSubscription _noteSubscription;

  NoteWatcherBloc(this._noteRepository)
      : super(const NoteWatcherState.initial()) {
    on<NoteWatcherEvent>(_onNoteWatcherEvent);
  }

  Future<void> _onNoteWatcherEvent(
    NoteWatcherEvent event,
    Emitter emit,
  ) async {
    await event.map(
      watchAll: (event) async {
        emit(const NoteWatcherState.loading());
        _noteSubscription = _noteRepository.watchAll().listen(
              (failureOrNote) => add(
                NoteWatcherEvent.noteStateChanged(failureOrNote),
              ),
            );
      },
      noteStateChanged: (event) async {
        emit(
          event.notes.fold(
            (f) => NoteWatcherState.failure(f),
            (notes) => NoteWatcherState.success(notes),
          ),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _noteSubscription.cancel();
    return super.close();
  }
}
