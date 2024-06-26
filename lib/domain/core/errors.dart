import 'package:notzz/domain/core/value_failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const message =
        'Encountered a ValueFailure at an Unrecoverable point. Terminating';
    return Error.safeToString('$message Failure was: $valueFailure');
  }
}
