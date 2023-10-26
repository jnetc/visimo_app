import 'package:flutter/material.dart';
// COMPONENTS
import 'package:flutter_visimo/icons/icons.dart';
import 'package:flutter_visimo/screens/phone-verifications/phone_number_screen.dart';
import 'package:flutter_visimo/screens/sign-up/signup_screen.dart';
import 'package:flutter_visimo/widgets/screen-elements/visimo_txt_and_anchor.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/dividers/divider_with_txt.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const TitleLarge(text: 'Login to your\naccount'),
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
            handler: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PhoneNumberScreen(),
                ),
              );
            },
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
    );
  }
}
