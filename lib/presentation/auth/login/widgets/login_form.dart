import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:notzz/applicaiton/auth/login_form/login_form_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginFormBloc, LoginFormState>(
        listener: (context, state) {
      state.status.fold(
          () => null,
          (either) => either.fold(
                (failure) => null,
                (_) {
                  //TODO: Navigate
                },
              ));
    }, builder: (context, state) {
      return Form(
        autovalidateMode: state.displayError
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: Column(
          children: [
            const SizedBox(height: 30),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              onChanged: (value) => context.read<LoginFormBloc>()
                ..add(LoginFormEvent.emailChanged(value)),
              validator: (_) =>
                  context.read<LoginFormBloc>().state.email.value.fold(
                        (failure) => failure.maybeWhen(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null,
                        ),
                        (sucess) => null,
                      ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              onChanged: (value) => context.read<LoginFormBloc>()
                ..add(LoginFormEvent.passwordChanged(value)),
              validator: (_) =>
                  context.read<LoginFormBloc>().state.password.value.fold(
                        (failure) => failure.maybeWhen(
                          invalidPassword: (_) => 'Invalid Password',
                          orElse: () => null,
                        ),
                        (sucess) => null,
                      ),
            ),
            const SizedBox(height: 30),
            Container(
              constraints: const BoxConstraints(
                minHeight: 50,
              ),
              width: double.infinity,
              height: 56,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: Colors.black87,
                ),
                onPressed: () {
                  context
                      .read<LoginFormBloc>()
                      .add(const LoginFormEvent.formSubmitted());
                },
                child: state.isSubmitting
                    ? const SpinKitThreeInOut(
                        color: Colors.white,
                      )
                    : const Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
