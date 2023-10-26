import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_visimo/screens/policy/policy_screen.dart';
import 'package:flutter_visimo/screens/terms/terms_screen.dart';

class TermsAndPolicy extends StatefulWidget {
  const TermsAndPolicy({super.key});

  @override
  State<TermsAndPolicy> createState() => _TermsAndPolicyState();
}

class _TermsAndPolicyState extends State<TermsAndPolicy> {
  late final TapGestureRecognizer _onTabTermsOfServices = TapGestureRecognizer()
    ..onTap = () => _goToScreen(const TermsScreen());
  late final TapGestureRecognizer _onTabPrivacyPolicy = TapGestureRecognizer()
    ..onTap = () => _goToScreen(const PolicyScreen());

  @override
  void dispose() {
    _onTabTermsOfServices.dispose();
    _onTabPrivacyPolicy.dispose();
    super.dispose();
  }

  void _goToScreen(Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
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
    );
  }
}
