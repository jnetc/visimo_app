import 'package:flutter/material.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/user.dart';
import 'package:flutter_visimo/providers/user_provider.dart';

import 'package:flutter_visimo/screens/create-account/02-fullname/fullname_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';
import 'package:provider/provider.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  bool focusValue = false;
  bool isTextFieldInValid = true;
  String? errorMessage;
  String usernameValue = '';

  void onTypeUsername(String value) {
    if (value.length < 4 || value.isEmpty) {
      setState(() => isTextFieldInValid = true);

      errorMessage = 'Username is empty or less 4 letters';
    }

    setState(() => isTextFieldInValid = false);
    usernameValue = value;
  }

  @override
  Widget build(BuildContext context) {
    final read = context.watch<UserProvider>();

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
            const HeadlineLarge(text: 'What\'s your\nusername'),
            const SizedBox(height: size48),
            Focus(
              onFocusChange: (value) {
                setState(() {
                  focusValue = value;
                });
              },
              child: TextField(
                onChanged: (value) => onTypeUsername(value),
                cursorColor: Colors.black,
                maxLength: 30,
                keyboardAppearance: Brightness.dark,
                decoration: const InputDecoration().copyWith(
                    hintText: 'Small Bee',
                    errorText: isTextFieldInValid ? errorMessage : null),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                    ),
              ),
            ),
            const SizedBox(height: size16),
            Text(
              'Your name is used in your profile and will be visible to the Visimo chats and global map.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Spacer(),
            VisimoMainButton(
              buttonName: 'Continue',
              isDisabled: isTextFieldInValid,
              color: Theme.of(context).buttonTheme.colorScheme!.primary,
              handler: () {
                read.updateUser(User(username: usernameValue));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FullNameScreen(),
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
