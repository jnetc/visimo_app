import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_visimo/screens/sign-in/signin_screen.dart';
import 'package:flutter_visimo/theme/colors.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  void _toSingInScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignInScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)!.txt__already_have_account,
          style: const TextStyle(
            color: VisimoColors.grey100,
            fontSize: 18,
          ),
        ),
        TextButton(
          onPressed: () => _toSingInScreen(context),
          child: Text(
            AppLocalizations.of(context)!.link_signin,
            style: const TextStyle(
              color: VisimoColors.lightYellow,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
