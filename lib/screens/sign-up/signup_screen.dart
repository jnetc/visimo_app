import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// COMPONENTS
import 'package:flutter_visimo/icons/icons.dart';
import 'package:flutter_visimo/screens/phone-verifications/phone_number_screen.dart';
import 'package:flutter_visimo/screens/policy/policy_screen.dart';
import 'package:flutter_visimo/screens/sign-in/signin_screen.dart';
import 'package:flutter_visimo/screens/terms/terms_screen.dart';
import 'package:flutter_visimo/widgets/screen-elements/visimo_txt_and_anchor.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/dividers/divider_with_txt.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TapGestureRecognizer _onTabTermsOfServices;
  late TapGestureRecognizer _onTabPrivacyPolicy;

  @override
  void initState() {
    super.initState();
    _onTabTermsOfServices = TapGestureRecognizer()
      ..onTap = () => _goToScreen(const TermsScreen());

    _onTabPrivacyPolicy = TapGestureRecognizer()
      ..onTap = () => _goToScreen(const PolicyScreen());
  }

  @override
  void dispose() {
    _onTabTermsOfServices.dispose();
    _onTabPrivacyPolicy.dispose();
    super.dispose();
  }

  void _goToScreen(Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Calc for the last element position
    // Flexible gap between last and previous element in the SingleChildScrollView
    final fullHeight = MediaQuery.of(context).size.height;
    final topPadding = MediaQuery.of(context).viewPadding.top;
    final appBarHeight = AppBar().preferredSize.height;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.only(top: 16, bottom: 32, left: 16, right: 16),
            height: fullHeight - (topPadding + appBarHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const TitleLarge(text: 'Create a new\naccount'),
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
                  text: 'Already have an account?',
                  anchorName: 'Sign In',
                  widget: SignInScreen(),
                ),
                const Spacer(),
                RichText(
                  text: TextSpan(
                    text:
                        'By tapping next you are creating an account and you agree to the Visimo Oy ',
                    style: Theme.of(context).textTheme.bodySmall,
                    children: [
                      TextSpan(
                        text: 'term’s of service',
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: _onTabTermsOfServices,
                      ),
                      const TextSpan(text: ' and '),
                      TextSpan(
                        text: 'privacy policy.',
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: _onTabPrivacyPolicy,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
