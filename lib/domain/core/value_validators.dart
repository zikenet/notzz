import 'package:dartz/dartz.dart';
import 'package:notzz/domain/core/value_failures.dart';

Either<ValueFailure<String>, String> validateEmail(String input) {
  final RegExp emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  return emailRegExp.hasMatch(input)
      ? right(input)
      : left(ValueFailure.invalidEmail(failedValue: input));
}

Either<ValueFailure<String>, String> validatePassword(String password) {
  final RegExp passwordRegExp =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
  return passwordRegExp.hasMatch(password)
      ? Right(password)
      : left(ValueFailure.invalidPassword(failedValue: password));
}

Either<ValueFailure<String>, String> validateEmptyString(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}
