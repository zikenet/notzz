import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:notzz/applicaiton/auth/auth/auth_bloc.dart';
import 'package:notzz/presentation/notes/notes_screen.dart';
import 'package:notzz/presentation/auth/login/login_screen.dart';

class AppRouter {
  final AuthBloc _authBloc;

  AppRouter({required AuthBloc authBloc}) : _authBloc = authBloc;
  late final router = GoRouter(
      // initialLocation: '/login',
      routes: [
        GoRoute(
          path: '/login',
          name: 'login',
          builder: (BuildContext context, GoRouterState state) =>
              const LoginScreen(),
        ),
        GoRoute(
          path: '/notes',
          name: 'notes',
          builder: (BuildContext context, GoRouterState state) =>
              const NotesScreen(),
        ),
      ],
      redirect: (BuildContext context, GoRouterState state) {
        return _authBloc.state.maybeWhen(
          authenticated: () {
            return '/notes';
          },
          unauthenticated: () {
            return '/login';
          },
          orElse: () {
            return null;
          },
        );
      },
      refreshListenable: GoRouterRefreshStream(_authBloc.stream));
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
