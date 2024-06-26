import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:notzz/domain/auth/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notzz/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  late final StreamSubscription userSubscription;

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthEvent>(_onAuthEvent);

    userSubscription = _authFacade.watchSignedUser().listen((userOption) => add(
          _AuthCheck(userOption),
        ));
  }

  Future<void> _onAuthEvent(AuthEvent event, Emitter emit) async {
    await event.map(
      authCheck: (authCheckEvent) async {
        authCheckEvent.user.fold(
          () => emit(const AuthState.unauthenticated()),
          (_) => emit(const AuthState.authenticated()),
        );
      },
      signOut: (signOutEvent) async {
        await _authFacade.signOut();
        emit(const AuthState.unauthenticated());
      },
    );
  }
}
