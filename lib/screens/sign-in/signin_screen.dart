import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_visimo/boxes.dart';
// COMPONENTS
import 'package:flutter_visimo/icons/icons.dart';
import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/screens/create-account/01-username/username_screen.dart';
import 'package:flutter_visimo/screens/phone-verifications/phone_number_screen.dart';
import 'package:flutter_visimo/screens/sign-up/signup_screen.dart';
import 'package:flutter_visimo/storage/preferences.dart';
// import 'package:flutter_visimo/visimo_app.dart';
import 'package:flutter_visimo/widgets/screen-elements/visimo_txt_and_anchor.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/dividers/divider_with_txt.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';
import 'package:provider/provider.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// ignore: constant_identifier_names
const ENGLISH = 'English';
// ignore: constant_identifier_names
const SUOMI = 'Suomi';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String language = ENGLISH;
  // late Future<Box<Preferences>> box;

  @override
  void initState() {
    // box =  await Hive.openBox('preferencesBox');
    super.initState();
  }

  void _signInWithAccounts(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const UsernameScreen()),
    );
  }

  void _signInWithPhone(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PhoneNumberScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final visimoState = context.findAncestorStateOfType<State<Visimo>>();
    final read = context.read<HiveProvider>();
    return Scaffold(
      // Keyboard will overlay all bottom widgets
      // Also resolve error: A RenderFlex overflowed by 167 pixels on the bottom.
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          DropdownButton<String>(
            onChanged: (String? value) async {
              if (value == null) return;

              await preferencesBox.put(
                  'language', Preferences(language: getLocaleFromValue(value)));
              read.updateLanguage(value: getLocaleFromValue(value));
              // UpdateHive.updateHive(value: getLocaleFromValue(value));
              // visimoState!.setState(() {});
              Future.delayed(const Duration(milliseconds: 900));

              setState(() {
                // var box2 = preferencesBox.get('language');
                // if (box2 == null) return;
                // print('Tab $getLocaleFromValue(value)');
                language = value;
              });
            },
            // value: language,
            icon: const Icon(Icons.menu, color: Colors.black),
            items: [
              DropdownMenuItem(
                value: ENGLISH,
                child: Row(
                  children: [
                    if (language == ENGLISH) const Icon(Icons.check),
                    const Text(ENGLISH),
                  ],
                ),
              ),
              DropdownMenuItem(
                value: SUOMI,
                child: Row(
                  children: [
                    if (language == SUOMI) const Icon(Icons.check),
                    const Text(SUOMI),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 16, right: 16, bottom: 32, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeadlineLarge(
                text: AppLocalizations.of(context)!.signin_page_title),
            const SizedBox(height: 48),
            VisimoMainButton(
              buttonName: AppLocalizations.of(context)!.btn_txt__google,
              handler: () => _signInWithAccounts(context),
              hasIcon: googleAccountIcon,
            ),
            const SizedBox(height: 18),
            VisimoMainButton(
              buttonName: AppLocalizations.of(context)!.btn_txt__apple,
              handler: () => _signInWithAccounts(context),
              hasIcon: appleAccountIcon,
            ),
            const SizedBox(height: 32),
            const DividerWithText(),
            const SizedBox(height: 32),
            VisimoMainButton(
              buttonName: AppLocalizations.of(context)!.btn_txt__phone,
              handler: () => _signInWithPhone(context),
              hasIcon: phoneIcon,
            ),
            const SizedBox(height: 24),
            SwitchBetweenSignInSignUp(
              text: AppLocalizations.of(context)!.txt__dont_have_account,
              anchorName: AppLocalizations.of(context)!.link_signup,
              widget: const SignUpScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
