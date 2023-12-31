import 'package:flutter/material.dart';
import 'package:flutter_visimo/screens/sign-up/signup_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Localizations.override(
      context: context,
      child: VisimoMainButton(
        buttonName: AppLocalizations.of(context)!.btn_txt__create_account,
        // buttonName: 'Create account',
        color: Theme.of(context).buttonTheme.colorScheme!.primary,
        handler: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SignUpScreen()),
        ),
      ),
    );
  }
}
