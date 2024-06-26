import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:notzz/domain/note/note.dart';
import 'package:notzz/domain/core/request_failure.dart';
import 'package:notzz/domain/note/i_note_repository.dart';
import 'package:notzz/infrastructure/notes/note_dto.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  @override
  Future<Either<RequestFailure, Unit>> create(Note note) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<RequestFailure, Unit>> delete(Note note) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<RequestFailure, Unit>> update(Note note) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<RequestFailure, KtList<Note>>> watchAll() async* {
    // TODO: implement watchAll
    // throw UnimplementedError();
    yield right(
      noteItems
          .map((note) => NoteDto.fromJson(note).toDomain())
          .toImmutableList(),
    );
  }
}

final List<Map<String, dynamic>> noteItems = [
  {
    "id": "asdf-1",
    "title": "first note",
    "body":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
    "color": 4294966736,
  },
  {
    "id": "asdf-2",
    "title": "second note",
    "body":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
    "color": 4291883200,
  },
  {
    "id": "asdf-3",
    "title": "third note",
    "body":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
    "color": 4294892630,
  },
  {
    "id": "asdf-4",
    "title": "fourth note",
    "body":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
    "color": 4294966736,
  },
  {
    "id": "asdf-5",
    "title": "fifth note",
    "body":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
    "color": 4294966736,
  },
  {
    "id": "asdf-6",
    "title": "sixth note",
    "body":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
    "color": 4294966736,
  },
];
