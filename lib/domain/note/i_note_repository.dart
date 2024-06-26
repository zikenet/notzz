import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:notzz/domain/note/note.dart';
import 'package:notzz/domain/core/request_failure.dart';

abstract class INoteRepository {
  Stream<Either<RequestFailure, KtList<Note>>> watchAll();
  Future<Either<RequestFailure, Unit>> create(Note note);
  Future<Either<RequestFailure, Unit>> update(Note note);
  Future<Either<RequestFailure, Unit>> delete(Note note);
}
