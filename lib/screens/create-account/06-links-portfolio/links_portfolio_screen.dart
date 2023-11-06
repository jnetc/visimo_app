import 'package:flutter/material.dart';
import 'package:flutter_visimo/assets/constants.dart';

import 'package:flutter_visimo/screens/create-account/07-create-visic/create_visic_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class LinksPortfolioScreen extends StatefulWidget {
  const LinksPortfolioScreen({super.key});

  @override
  State<LinksPortfolioScreen> createState() => _LinksPortfolioScreenState();
}

class _LinksPortfolioScreenState extends State<LinksPortfolioScreen> {
  final _addSkillsController = TextEditingController();
  bool focusValue = false;

  @override
  void dispose() {
    _addSkillsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          top: size16,
          right: size16,
          left: size16,
          bottom: size32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeadlineLarge(text: 'Add links to your\nportfolios'),
            const SizedBox(height: size48),
            Focus(
              onFocusChange: (value) {
                setState(() {
                  focusValue = value;
                });
              },
              child: TextField(
                controller: _addSkillsController,
                cursorColor: Colors.black,
                keyboardAppearance: Brightness.dark,
                decoration: const InputDecoration()
                    .copyWith(hintText: 'Helsinki, Suomi'),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                    ),
              ),
            ),
            const Spacer(),
            Text(
              'You can skip this step and do this anytime in your profile section.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: size16),
            VisimoMainButton(
              buttonName: 'Continue',
              isDisabled: false,
              color: Theme.of(context).buttonTheme.colorScheme!.primary,
              handler: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateVisicScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
