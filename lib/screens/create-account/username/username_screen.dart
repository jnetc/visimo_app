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

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const HeadlineLarge(text: 'What\'s your\nusername'),
              const SizedBox(height: 48),
              TextFormField(
                controller: _usernameController,
                cursorColor: Colors.black,
                enableSuggestions: false,
                autocorrect: false,
                enableIMEPersonalizedLearning: false,
                maxLength: 45,
                spellCheckConfiguration:
                    const SpellCheckConfiguration.disabled(),
                keyboardAppearance: Brightness.dark,
                decoration:
                    const InputDecoration().copyWith(hintText: 'Your username'),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                    ),
              ),
              const SizedBox(height: 24),
              Text(
                'Your name is used in your profile and will be visible to the Visimo chats and global map.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 48),
              Image.asset(
                'assets/illustrations/username-screen.png',
                color: Theme.of(context).scaffoldBackgroundColor,
                colorBlendMode: BlendMode.multiply,
                alignment: Alignment.topCenter,
              )
              // const Spacer(),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(right: 16, bottom: 32, left: 16),
        child: VisimoMainButton(
          buttonName: 'Continue',
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
