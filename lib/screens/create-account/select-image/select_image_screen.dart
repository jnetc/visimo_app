import 'package:flutter/material.dart';
import 'package:flutter_visimo/screens/create-account/select-island/select_island_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class SelectImageScreen extends StatefulWidget {
  const SelectImageScreen({super.key});

  @override
  State<SelectImageScreen> createState() => _SelectImageScreenState();
}

class _SelectImageScreenState extends State<SelectImageScreen> {
  final _imahgeController = TextEditingController();

  @override
  void dispose() {
    _imahgeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 16, right: 16, bottom: 32, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeadlineLarge(text: 'Set or upload\nprofile image'),
            const SizedBox(height: 48),
            TextFormField(
              controller: _imahgeController,
              cursorColor: Colors.black,
              enableSuggestions: false,
              autocorrect: false,
              enableIMEPersonalizedLearning: false,
              maxLength: 45,
              spellCheckConfiguration: const SpellCheckConfiguration.disabled(),
              keyboardAppearance: Brightness.dark,
              decoration:
                  const InputDecoration().copyWith(hintText: 'Your username'),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.black,
                  ),
            ),
            const SizedBox(height: 48),
            const Spacer(),
            VisimoMainButton(
              buttonName: 'Continue',
              handler: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectIslandScreen(),
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
