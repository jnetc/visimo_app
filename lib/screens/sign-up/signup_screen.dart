import 'package:flutter/material.dart';
// COMPONENTS
import 'package:flutter_visimo/icons/icons.dart';
import 'package:flutter_visimo/screens/create-account/01-username/username_screen.dart';
import 'package:flutter_visimo/screens/phone-verifications/phone_number_screen.dart';
import 'package:flutter_visimo/screens/sign-in/signin_screen.dart';
import 'package:flutter_visimo/screens/sign-up/widgets/terms_and_policy.dart';
import 'package:flutter_visimo/widgets/screen-elements/visimo_txt_and_anchor.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/dividers/divider_with_txt.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // To make a flexible gap between the last and previous element in the SingleChildScrollView and Spacer
    // We need those three values for calc the height of the Container
    // This will avoid error if we return back to this screen from PhoneNumberScreen
    // final double fullHeight = MediaQuery.of(context).size.height;
    // final topPadding = MediaQuery.of(context).viewPadding.top;
    // final appBarHeight = AppBar().preferredSize.height;

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
            const HeadlineLarge(text: 'Create a new\naccount'),
            const SizedBox(height: 48),
            VisimoMainButton(
              buttonName: 'Continue with Google',
              handler: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UsernameScreen(),
                  ),
                );
              },
              hasIcon: googleAccountIcon,
            ),
            const SizedBox(height: 18),
            VisimoMainButton(
              buttonName: 'Continue with Apple',
              handler: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UsernameScreen(),
                  ),
                );
              },
              hasIcon: appleAccountIcon,
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
              hasIcon: phoneIcon,
            ),
            const SizedBox(height: 24),
            const SwitchBetweenSignInSignUp(
              text: 'Already have an account?',
              anchorName: 'Sign In',
              widget: SignInScreen(),
            ),
            const Spacer(),
            const TermsAndPolicy(),
          ],
        ),
      ),
    );
  }
}
