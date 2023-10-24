import 'package:flutter/material.dart';
// COMPONENTS
import 'package:flutter_visimo/icons/icons.dart';
import 'package:flutter_visimo/screens/sign-up/signup_screen.dart';
import 'package:flutter_visimo/widgets/screen-elements/visimo_txt_and_anchor.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/dividers/divider_with_txt.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 16, bottom: 48, left: 16, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Login to your account',
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
            const SizedBox(height: 48),
            VisimoMainButton(
              buttonName: 'Continue with Google',
              handler: () {},
              icon: googleAccountIcon,
            ),
            const SizedBox(height: 18),
            VisimoMainButton(
              buttonName: 'Continue with Apple',
              handler: () {},
              icon: appleAccountIcon,
            ),
            const SizedBox(height: 32),
            const DividerWithText(),
            const SizedBox(height: 32),
            VisimoMainButton(
              buttonName: 'Phone number',
              handler: () {},
              icon: phoneIcon,
            ),
            const SizedBox(height: 24),
            const SwitchBetweenSignInSignUp(
              text: 'Don\'t have an account yet?',
              anchorName: 'Sign Up',
              widget: SignUpScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
