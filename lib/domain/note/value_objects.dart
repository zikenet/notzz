import 'package:dartz/dartz.dart';
import 'package:notzz/domain/core/value_failures.dart';
import 'package:notzz/domain/core/value_object.dart';
import 'package:notzz/domain/core/value_validators.dart';

class NoteBody extends ValueObject {
  @override
  final Either<ValueFailure, dynamic> value;

  const NoteBody._({required this.value});

  factory NoteBody(String title) {
    return NoteBody._(value: validateEmptyString(title));
  }
}
