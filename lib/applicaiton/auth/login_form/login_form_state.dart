part of 'login_form_bloc.dart';

@freezed
abstract class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    required Email email,
    required Password password,
    required bool displayError,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> status,
  }) = _LoginFormState;

  factory LoginFormState.initial() => LoginFormState(
        email: Email(''),
        password: Password(''),
        displayError: false,
        isSubmitting: false,
        status: none(),
      );
}
