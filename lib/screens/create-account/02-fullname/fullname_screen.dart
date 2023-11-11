import 'package:flutter/material.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/user.dart';
import 'package:flutter_visimo/providers/user_provider.dart';

import 'package:flutter_visimo/screens/create-account/03-add-location/add_location_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';
import 'package:provider/provider.dart';

class FullNameScreen extends StatefulWidget {
  const FullNameScreen({super.key});

  @override
  State<FullNameScreen> createState() => _FullNameScreenState();
}

class _FullNameScreenState extends State<FullNameScreen> {
  final _fullNameController = TextEditingController();
  bool focusValue = false;

  @override
  void dispose() {
    _fullNameController.dispose();
    super.dispose();
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
            const HeadlineLarge(text: 'Add your\nfullname'),
            const SizedBox(height: size48),
            Focus(
              onFocusChange: (value) {
                setState(() {
                  focusValue = value;
                });
              },
              child: TextField(
                controller: _fullNameController,
                cursorColor: Colors.black,
                keyboardAppearance: Brightness.dark,
                decoration: const InputDecoration()
                    .copyWith(hintText: 'Pekka Viroliainen'),
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
                read.updateUser(User(fullname: _fullNameController.text));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddLocationScreen(),
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
