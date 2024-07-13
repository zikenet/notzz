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
    "body": r'[{"insert":"Jgskgskydydy\n"}]',
    "color": 4294966736,
  },
  {
    "id": "asdf-2",
    "title": "second note",
    "body": r'[{"insert":"Asdfasdfdafdfasdfasdf\n"}]',
    "color": 4291883200,
  },
  {
    "id": "asdfadf",
    "title": "thrid nots",
    "body": r'[{"insert": "Flutter Quill\n"}]',
    "color": 4291883200,
  },
  {
    "id": "asdfasdfadf",
    "title": "fourth notes",
    "body":
        r'[{"insert": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut tortor lacus. Nullam feugiat blandit vulputate. Pellentesque blandit, ante ac ornare tempus, mi massa feugiat ante, id eleifend neque velit eget velit. Proin aliquet ipsum et tortor rutrum tristique. Pellentesque quis diam facilisis, tincidunt augue ac, rhoncus lectus. Vivamus ornare sit amet odio vitae condimentum. Nullam nec porttitor dolor. Integer nec pharetra sapien. Duis lobortis magna quis sollicitudin commodo. In tristique ex ac nisl tincidunt, et interdum sapien rhoncus. Suspendisse potenti.\n"}]',
    "color": 4291883200,
  }
];
