import 'package:dartz/dartz.dart';
import 'package:notzz/domain/core/value_object.dart';
import 'package:notzz/domain/core/value_failures.dart';
import 'package:notzz/domain/core/value_validators.dart';

class Email extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Email._({required this.value});

  factory Email(String input) {
    return Email._(value: validateEmail(input));
  }
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Password._({required this.value});

  factory Password(String input) {
    return Password._(value: validatePassword(input));
  }
}

class Avatar extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Avatar._({required this.value});

  factory Avatar() {
    return Avatar._(value: right('assets/images/avatar_1.png'));
  }

  factory Avatar.fromUniqueString(String uniqueString) {
    return Avatar._(value: right(uniqueString));
  }
}
