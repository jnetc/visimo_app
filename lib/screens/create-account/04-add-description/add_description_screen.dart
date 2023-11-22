import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/user.dart';
import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/screens/create-account/05-add-skills/add_skills_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class AddDescriptionScreen extends StatefulWidget {
  const AddDescriptionScreen({super.key});

  @override
  State<AddDescriptionScreen> createState() => _AddDescriptionScreenState();
}

class _AddDescriptionScreenState extends State<AddDescriptionScreen> {
  final _controller = TextEditingController();
  bool focusValue = false;

  @override
  void initState() {
    final initDesc =
        Provider.of<UserProvider>(context, listen: false).user.description;

    if (initDesc == null) {
      return;
    }

    _controller.text = initDesc;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _setDescription(BuildContext context) {
    final read = Provider.of<UserProvider>(context, listen: false);
    final desc = _controller.text.isEmpty ? null : _controller.text;

    read.updateUserDescription(User(description: desc));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddSkillsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: bodyPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const HeadlineLarge(text: 'A short description\nabout you'),
                const SizedBox(height: size48),
                TextField(
                  controller: _controller,
                  minLines: 5,
                  maxLines: 10,
                  // onChanged: (value) => onTypeUsername(value),
                  cursorColor: Colors.black,
                  keyboardAppearance: Brightness.dark,
                  decoration: const InputDecoration()
                      .copyWith(hintText: 'Discribe yourself'),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.black),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'You can skip this step and do this anytime in your profile section.',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: size16),
                VisimoMainButton(
                  buttonName: 'Continue',
                  isDisabled: false,
                  color: Theme.of(context).buttonTheme.colorScheme!.primary,
                  handler: () => _setDescription(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
