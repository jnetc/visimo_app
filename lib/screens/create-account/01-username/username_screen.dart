import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/user.dart';
import 'package:flutter_visimo/screens/create-account/02-fullname/fullname_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  // bool focusValue = false;
  final TextEditingController _controllerUsername = TextEditingController();
  bool isTextFieldInValid = true;
  String? errorMessage;
  String usernameValue = '';

  @override
  void initState() {
    final initUsername =
        Provider.of<UserProvider>(context, listen: false).user.username;

    if (initUsername.isEmpty) {
      return;
    }

    _controllerUsername.text = initUsername;
    usernameValue = initUsername;
    isTextFieldInValid = false;
    super.initState();
  }

  @override
  void dispose() {
    _controllerUsername.dispose();
    super.dispose();
  }

  void _getUsername(String value) {
    if (value.length < 4 || value.isEmpty) {
      setState(() => isTextFieldInValid = true);
      errorMessage = 'Username is empty or less 4 letters';
    }

    setState(() => isTextFieldInValid = false);
    usernameValue = value;
  }

  void _setUsername(BuildContext context) {
    final read = Provider.of<UserProvider>(context, listen: false);

    read.updateUserName(User(username: usernameValue));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FullNameScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: bodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeadlineLarge(text: 'What\'s your\nusername'),
            const SizedBox(height: size48),
            TextField(
              controller: _controllerUsername,
              onChanged: (value) => _getUsername(value),
              cursorColor: Colors.black,
              maxLength: 30,
              keyboardAppearance: Brightness.dark,
              decoration: const InputDecoration().copyWith(
                hintText: 'Small Bee',
                errorText: isTextFieldInValid ? errorMessage : null,
                // label: Text(usernameValue),
              ),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.black,
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
              handler: () => _setUsername(context),
            ),
          ],
        ),
      ),
    );
  }
}
