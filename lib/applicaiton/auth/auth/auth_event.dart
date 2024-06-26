part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheck(Option<User> user) = _AuthCheck;
  const factory AuthEvent.signOut() = _SignOut;
}
