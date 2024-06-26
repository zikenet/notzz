import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:notzz/presentation/core/widgets/or_divider.dart';
import 'package:notzz/presentation/auth/login/widgets/login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Welcome Back',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Login with your email and password\n or continue with Google',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const LoginForm(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const OrDivider(),
            GestureDetector(
              onTap: () {
                // context
                //     .read<SignUpFormBloc>()
                //     .add(const SignUpFormEvent.registerWithGoogle());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/g_logo.svg',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('Continue with Google'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                      text: "Don't have an account ? ",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, '/signup');
                      },
                    text: 'Sign up',
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
