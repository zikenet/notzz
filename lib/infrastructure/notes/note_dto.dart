import 'dart:ui';

import 'package:notzz/domain/note/note.dart';
import 'package:notzz/domain/core/value_objects.dart';
import 'package:notzz/domain/note/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_dto.freezed.dart';
part 'note_dto.g.dart';

@freezed
abstract class NoteDto with _$NoteDto {
  const NoteDto._();
  const factory NoteDto({
    required String id,
    required String title,
    required String body,
    required int color,
  }) = _NoteDto;

  factory NoteDto.fromDomain(Note note) {
    return NoteDto(
      id: note.id.getOrCrash(),
      title: note.title.getOrCrash(),
      body: note.body.getOrCrash(),
      color: note.color.getOrCrash().value,
    );
  }

  Note toDomain() {
    return Note(
      id: UniqueId.fromUniqueString(id),
      title: Title(title),
      body: NoteBody(body),
      color: CardColor(Color(color)),
    );
  }

  factory NoteDto.fromJson(Map<String, dynamic> json) =>
      _$NoteDtoFromJson(json);
}
