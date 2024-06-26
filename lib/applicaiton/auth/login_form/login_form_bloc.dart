import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notzz/domain/auth/auth_failure.dart';
import 'package:notzz/domain/auth/i_auth_facade.dart';
import 'package:notzz/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_state.dart';
part 'login_form_event.dart';
part 'login_form_bloc.freezed.dart';

@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthFacade _authFacade;
  LoginFormBloc(this._authFacade) : super(LoginFormState.initial()) {
    on<LoginFormEvent>(_onLoginFormEvent);
  }

  Future<void> _onLoginFormEvent(
    LoginFormEvent event,
    Emitter<LoginFormState> emit,
  ) async {
    await event.map(
      emailChanged: (event) {
        emit(state.copyWith(
          email: Email(event.address),
          status: none(),
        ));
      },
      passwordChanged: (event) {
        emit(state.copyWith(
          password: Password(event.password),
          status: none(),
        ));
      },
      formSubmitted: (event) async {
        Either<AuthFailure, Unit>? authResponse;

        final isEmailValid = state.email.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          emit(state.copyWith(
            isSubmitting: true,
            status: none(),
          ));

          authResponse = await _authFacade.signInWithCredentials(
            email: state.email,
            password: state.password,
          );
        }
        emit(state.copyWith(
          isSubmitting: false,
          displayError: true,
          status: optionOf(authResponse),
        ));
      },
    );
  }
}
