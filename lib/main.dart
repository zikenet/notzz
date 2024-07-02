import 'package:notzz/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notzz/presentation/core/theme/theme.dart';
import 'package:notzz/presentation/core/routes/routes.dart';
import 'package:notzz/applicaiton/auth/auth/auth_bloc.dart';
import 'package:notzz/applicaiton/auth/login_form/login_form_bloc.dart';

void main() {
  configureDependencies(Environment.dev);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => getIt<LoginFormBloc>(),
        ),
        BlocProvider(
          create: (BuildContext context) => getIt<AuthBloc>(),
        )
      ],
      child: Builder(
        builder: (context) => MaterialApp.router(
          theme: lightTheme,
          darkTheme: darkTheme,
          routerConfig: AppRouter(authBloc: context.read<AuthBloc>()).router,
          builder: (context, widget) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (BuildContext context) => getIt<LoginFormBloc>(),
                ),
                BlocProvider(
                  create: (BuildContext context) => getIt<AuthBloc>(),
                )
              ],
              child: widget!,
            );
          },
        ),
      ),
    );
  }
}
