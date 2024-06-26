import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:notzz/domain/auth/auth_failure.dart';
import 'package:notzz/domain/auth/i_auth_facade.dart';
import 'package:notzz/domain/auth/user.dart';
import 'package:notzz/domain/auth/value_objects.dart';
import 'package:notzz/domain/core/value_objects.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  @override
  Future<Either<AuthFailure, Unit>> registerWithCredentials({
    required Email email,
    required Password password,
  }) {
    // TODO: implement registerWithCredentials
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithCredentials({
    required Email email,
    required Password password,
  }) async {
    // TODO: implement signInWithCredentials
    return await right(unit);
    // throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Stream<Option<User>> watchSignedUser() async* {
    yield optionOf(User(id: UniqueId.fromUniqueString('asdfasdfasdfasdf')));
    // yield optionOf(null);

    // TODO: implement watchSignedUser
    // throw UnimplementedError();
  }
}
