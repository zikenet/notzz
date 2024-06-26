import 'package:dartz/dartz.dart';
import 'package:notzz/domain/core/errors.dart';
import 'package:notzz/domain/core/value_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  T getOrCrash() {
    return value.fold(
      (l) => throw UnexpectedValueError(l),
      (r) => r,
    );
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
