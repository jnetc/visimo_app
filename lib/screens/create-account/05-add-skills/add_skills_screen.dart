import 'package:flutter/material.dart';
import 'package:flutter_visimo/assets/constants.dart';

import 'package:flutter_visimo/screens/create-account/06-links-portfolio/links_portfolio_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class AddSkillsScreen extends StatefulWidget {
  const AddSkillsScreen({super.key});

  @override
  State<AddSkillsScreen> createState() => _AddSkillsScreenState();
}

class _AddSkillsScreenState extends State<AddSkillsScreen> {
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
            const HeadlineLarge(text: 'Add your skills and\nabilities'),
            const SizedBox(height: size48),
            Focus(
              onFocusChange: (value) {
                setState(() {
                  focusValue = value;
                });
              },
              child: TextField(
                controller: _addSkillsController,
                minLines: 5,
                maxLines: 10,
                // onChanged: (value) => onTypeUsername(value),
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
              'You can do this anytime in your profile section.',
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
                    builder: (context) => const LinksPortfolioScreen(),
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
