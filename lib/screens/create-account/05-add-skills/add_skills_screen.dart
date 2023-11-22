import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_visimo/models/user.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/screens/create-account/06-links-portfolio/links_portfolio_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class AddSkillsScreen extends StatefulWidget {
  const AddSkillsScreen({super.key});

  @override
  State<AddSkillsScreen> createState() => _AddSkillsScreenState();
}

class _AddSkillsScreenState extends State<AddSkillsScreen> {
  final _controller = TextEditingController();
  bool focusValue = false;

  @override
  void initState() {
    final initSkills =
        Provider.of<UserProvider>(context, listen: false).user.skills;

    if (initSkills == null) {
      return;
    }

    _controller.text = initSkills;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _setSkills(BuildContext context) {
    final read = Provider.of<UserProvider>(context, listen: false);
    final skills = _controller.text.isEmpty ? null : _controller.text;

    read.updateUserSkills(User(skills: skills));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LinksPortfolioScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: bodyPadding,
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
                controller: _controller,
                minLines: 5,
                maxLines: 10,
                cursorColor: Colors.black,
                keyboardAppearance: Brightness.dark,
                decoration: const InputDecoration()
                    .copyWith(hintText: 'Type your skills here'),
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
              handler: () => _setSkills(context),
            ),
          ],
        ),
      ),
    );
  }
}
