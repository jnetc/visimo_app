import 'package:flutter/material.dart';
import 'package:flutter_visimo/screens/create-account/select-image/select_image_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  final _usernameController = TextEditingController();
  bool focusValue = false;
  bool isTextFieldInValid = true;
  String? errorMessage;

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

  void onTypeUsername(String value) {
    if (value.length < 4 || value.isEmpty) {
      setState(() {
        isTextFieldInValid = true;
      });
      errorMessage = 'Username is empty or less 4 letters';
      return;
    }

    setState(() {
      isTextFieldInValid = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeadlineLarge(text: 'What\'s your\nusername'),
            const SizedBox(height: 48),
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
                    hintText: 'Your username',
                    errorText: isTextFieldInValid ? errorMessage : null),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                    ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Your name is used in your profile and will be visible to the Visimo chats and global map.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(right: 16, bottom: 32, left: 16),
        child: VisimoMainButton(
          buttonName: 'Continue',
          isDisabled: false, //isTextFieldInValid,
          handler: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SelectImageScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
