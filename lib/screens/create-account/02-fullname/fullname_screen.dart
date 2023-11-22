import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/user.dart';
import 'package:flutter_visimo/screens/create-account/03-add-location/add_location_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class FullNameScreen extends StatefulWidget {
  const FullNameScreen({super.key});

  @override
  State<FullNameScreen> createState() => _FullNameScreenState();
}

class _FullNameScreenState extends State<FullNameScreen> {
  final _controller = TextEditingController();
  bool focusValue = false;

  @override
  void initState() {
    final initFullname =
        Provider.of<UserProvider>(context, listen: false).user.fullname;

    if (initFullname == null) {
      return;
    }

    _controller.text = initFullname;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _setFullName(BuildContext context) {
    final read = Provider.of<UserProvider>(context, listen: false);
    final fullname = _controller.text.isEmpty ? null : _controller.text;

    read.updateUserFullName(User(fullname: fullname));

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddLocationScreen(),
      ),
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
            const HeadlineLarge(text: 'Add your\nfullname'),
            const SizedBox(height: size48),
            Focus(
              onFocusChange: (value) {
                setState(() {
                  focusValue = value;
                });
              },
              child: Focus(
                onFocusChange: (value) {
                  setState(() {
                    focusValue = value;
                  });
                },
                child: TextField(
                  controller: _controller,
                  cursorColor: Colors.black,
                  keyboardAppearance: Brightness.dark,
                  decoration: const InputDecoration()
                      .copyWith(hintText: 'Pekka Viroliainen'),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black,
                      ),
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
              handler: () => _setFullName(context),
            ),
          ],
        ),
      ),
    );
  }
}
