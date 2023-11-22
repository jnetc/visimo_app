import 'package:flutter/material.dart';
// COMPONENTS
import 'package:flutter_visimo/icons/icons.dart';
import 'package:flutter_visimo/screens/create-account/01-username/username_screen.dart';
import 'package:flutter_visimo/screens/phone-verifications/phone_number_screen.dart';
import 'package:flutter_visimo/screens/sign-up/signup_screen.dart';
import 'package:flutter_visimo/widgets/screen-elements/visimo_txt_and_anchor.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/dividers/divider_with_txt.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  void _signInWithAccounts(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const UsernameScreen()),
    );
  }

  void _signInWithPhone(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PhoneNumberScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Keyboard will overlay all bottom widgets
      // Also resolve error: A RenderFlex overflowed by 167 pixels on the bottom.
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 16, right: 16, bottom: 32, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeadlineLarge(text: 'Login to your\naccount'),
            const SizedBox(height: 48),
            VisimoMainButton(
              buttonName: 'Continue with Google',
              handler: () => _signInWithAccounts(context),
              hasIcon: googleAccountIcon,
            ),
            const SizedBox(height: 18),
            VisimoMainButton(
              buttonName: 'Continue with Apple',
              handler: () => _signInWithAccounts(context),
              hasIcon: appleAccountIcon,
            ),
            const SizedBox(height: 32),
            const DividerWithText(),
            const SizedBox(height: 32),
            VisimoMainButton(
              buttonName: 'Phone number',
              handler: () => _signInWithPhone(context),
              hasIcon: phoneIcon,
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
