import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        text: AppLocalizations.of(context)!.terms_and_privacy,
        style: Theme.of(context).textTheme.bodySmall,
        children: [
          TextSpan(
            text: AppLocalizations.of(context)!.link_terms,
            style: const TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
            recognizer: _onTabTermsOfServices,
          ),
          TextSpan(text: AppLocalizations.of(context)!.or),
          TextSpan(
            text: AppLocalizations.of(context)!.link_privacy,
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
