import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final watch = context.watch<UserProvider>().user;

    print(watch.username);

    return Scaffold(
      appBar: AppBar(surfaceTintColor: Colors.transparent),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: size16,
          right: size16,
          left: size16,
          bottom: size32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeadlineLarge(text: 'Account\nsuccessfully\ncreated'),
            Image.asset(
              'assets/illustrations/account-created.png',
              colorBlendMode: BlendMode.multiply,
              color: Theme.of(context).colorScheme.background,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Username: ${watch.username}'),
                Text('Fullname: ${watch.fullname ?? 'No Fullname'}'),
                Text('Address: ${watch.currentPos?.address ?? 'No Address'}'),
                Text('Description: ${watch.description ?? 'No Description'}'),
                Text('Skills: ${watch.skills ?? 'No Skills'}'),
                Text(
                    'Portfolio Links: ${watch.portfolioLinks?.join(', ') ?? 'No Skills'}'),
                const Text('Model Visic ???'),
                Text('Island: ${watch.island!.island.name}'),
              ],
            ),
            const SizedBox(height: 32),
            VisimoMainButton(
              buttonName: 'Start your journey',
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
