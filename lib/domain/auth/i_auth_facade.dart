import 'package:dartz/dartz.dart';
import 'package:notzz/domain/auth/user.dart';
import 'package:notzz/domain/auth/auth_failure.dart';
import 'package:notzz/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithCredentials({
    required Email email,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithCredentials({
    required Email email,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Stream<Option<User>> watchSignedUser();
  Future<void> signOut();
}
