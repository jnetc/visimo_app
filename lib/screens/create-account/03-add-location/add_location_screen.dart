import 'package:flutter/material.dart';

import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/icons/icons.dart';
import 'package:flutter_visimo/screens/create-account/03-add-location/helpers/get_location.dart';
import 'package:flutter_visimo/screens/create-account/04-add-description/add_description_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class AddLocationScreen extends StatefulWidget {
  const AddLocationScreen({super.key});

  @override
  State<AddLocationScreen> createState() => _AddLocationScreenState();
}

class _AddLocationScreenState extends State<AddLocationScreen> {
  final _addLocationController = TextEditingController();
  bool focusValue = false;
  String indicate = 'Find location';

  @override
  void dispose() {
    _addLocationController.dispose();
    super.dispose();
  }

  _getSity() async {
    setState(() => indicate = 'Getting location');

    try {
      final placemarks = await getCurrentLocation();

      if (placemarks.isEmpty) {
        setState(() => indicate = 'Sorry your position undefined');
        return;
      }

      // print(placemarks.first);
      setState(() {
        indicate = 'Find location';
        _addLocationController.text =
            '${placemarks.first.locality}, ${placemarks.first.country}';
      });
    } catch (err) {
      setState(() => indicate = 'Don\'t get response');

      throw 'Don\'t get response from GPS';
    }
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
            const HeadlineLarge(text: 'Add your current\nlocation'),
            const SizedBox(height: size48),
            Focus(
              onFocusChange: (value) {
                setState(() {
                  focusValue = value;
                });
              },
              child: TextField(
                controller: _addLocationController,
                cursorColor: Colors.black,
                keyboardAppearance: Brightness.dark,
                decoration: const InputDecoration().copyWith(
                  hintText: 'Helsinki, Suomi',
                ),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                    ),
              ),
            ),
            const SizedBox(height: size24),
            VisimoMainButton(
              buttonName: indicate,
              hasIcon: locationIcon,
              handler: _getSity,
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
                    builder: (context) => const AddDescriptionScreen(),
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
