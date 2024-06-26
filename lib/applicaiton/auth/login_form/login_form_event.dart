part of 'login_form_bloc.dart';

@freezed
abstract class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.emailChanged(String address) = _EmailChanged;
  const factory LoginFormEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory LoginFormEvent.formSubmitted() = _FormSubmitted;
}
