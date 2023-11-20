import 'package:flutter/material.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';
import 'package:provider/provider.dart';

class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final watch = context.watch<UserProvider>().user.island?.name.name;
    print(watch);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeadlineLarge(text: 'Select your\npreferred island'),
            const SizedBox(height: size48),
            const SizedBox(height: size32),
            VisimoMainButton(
              buttonName: 'Continue',
              isDisabled: false,
              color: Theme.of(context).buttonTheme.colorScheme!.primary,
              handler: () {},
            ),
          ],
        ),
      ),
    );
  }
}
