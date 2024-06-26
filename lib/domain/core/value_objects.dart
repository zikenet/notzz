import 'package:uuid/uuid.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:notzz/domain/core/value_object.dart';
import 'package:notzz/domain/core/value_failures.dart';
import 'package:notzz/domain/core/value_validators.dart';
import 'package:notzz/domain/core/value_transformers.dart';

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const UniqueId._({required this.value});

  factory UniqueId() {
    return UniqueId._(value: right(const Uuid().v1()));
  }

  factory UniqueId.fromUniqueString(String uniqueString) {
    return UniqueId._(value: right(uniqueString));
  }
}

class Title extends ValueObject {
  @override
  final Either<ValueFailure, dynamic> value;

  const Title._({required this.value});

  factory Title(String title) {
    return Title._(value: validateEmptyString(title));
  }
}

class CardColor extends ValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xfffafafa),
    Color(0xfffa8072),
    Color(0xfffedc56),
    Color(0xffd0f0c0),
    Color(0xfffca3b7),
    Color(0xff997950),
    Color(0xfffffdd0),
  ];

  @override
  final Either<ValueFailure<Color>, Color> value;

  const CardColor._({required this.value});

  factory CardColor(Color color) {
    return CardColor._(
      value: right(makeColorOpaque(color)),
    );
  }
}
