import 'package:dartz/dartz.dart';
import 'package:notzz/domain/core/value_failures.dart';
import 'package:notzz/domain/core/value_objects.dart';
import 'package:notzz/domain/note/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const Note._();
  const factory Note({
    required UniqueId id,
    required Title title,
    required NoteBody body,
    required CardColor color,
  }) = _Note;

  factory Note.empty() => Note(
        id: UniqueId(),
        title: Title(''),
        body: NoteBody(''),
        color: CardColor(CardColor.predefinedColors[0]),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(body.failureOrUnit)
        .andThen(color.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
