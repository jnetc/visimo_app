import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/icons/icons.dart';
import 'package:flutter_visimo/models/user.dart';
import 'package:flutter_visimo/providers/user_provider.dart';
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
  final _controller = TextEditingController();
  // bool focusValue = false;
  String indicate = 'Find location';
  CurrentGeoLocation location = CurrentGeoLocation();

  @override
  void initState() {
    final initLocation =
        Provider.of<UserProvider>(context, listen: false).user.currentPos;

    if (initLocation == null) {
      return;
    }

    _controller.text = initLocation.address!;
    location = initLocation;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _getSity() async {
    setState(() => indicate = 'Getting location');

    try {
      final position = await determinePosition();
      final placemarks = await getCurrentLocation();

      if (placemarks.isEmpty) {
        setState(() => indicate = 'Sorry your position undefined');
        return;
      }

      setState(() {
        indicate = 'Find location';
        location.latitude = position.latitude;
        location.longitude = position.longitude;
        _controller.text =
            '${placemarks.first.locality}, ${placemarks.first.country}';
      });
    } catch (err) {
      setState(() => indicate = 'Don\'t get response');

      throw 'Don\'t get response from GPS';
    }
  }

  void _setLocation(BuildContext context) {
    final read = Provider.of<UserProvider>(context, listen: false);
    final address = _controller.text.isEmpty ? null : _controller.text;

    read.updateUserCurrentPos(
      User(
        currentPos: CurrentGeoLocation(
          latitude: location.latitude,
          longitude: location.longitude,
          address: address,
        ),
      ),
    );

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddDescriptionScreen()),
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
            const HeadlineLarge(text: 'Add your current\nlocation'),
            const SizedBox(height: size48),
            TextField(
              controller: _controller,
              cursorColor: Colors.black,
              keyboardAppearance: Brightness.dark,
              decoration: const InputDecoration().copyWith(
                hintText: 'Helsinki, Suomi',
              ),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.black,
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
              'You can skip this step and do this anytime in your profile section.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: size16),
            VisimoMainButton(
              buttonName: 'Continue',
              isDisabled: indicate.contains('Getting location') ? true : false,
              color: Theme.of(context).buttonTheme.colorScheme!.primary,
              handler: () => _setLocation(context),
            ),
          ],
        ),
      ),
    );
  }
}
