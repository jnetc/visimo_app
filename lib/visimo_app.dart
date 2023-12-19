import 'package:flutter/material.dart';
// import 'dart:io';
import 'package:flutter/services.dart'; // need for orientation
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_visimo/boxes.dart';
import 'package:flutter_visimo/providers/user_provider.dart';
// import 'package:flutter_visimo/screens/create-account/07-create-visic/create_visic_screen.dart';

import 'package:flutter_visimo/screens/start/start_screen.dart';
// import 'package:flutter_visimo/screens/world/world_screen.dart';
import 'package:flutter_visimo/theme/dark_theme.dart';
import 'package:flutter_visimo/theme/light_theme.dart';
import 'package:provider/provider.dart';

// import 'storage/preferences.dart';

// class UpdateHive {
//   static String updateHive({String? value}) {
//     final box = preferencesBox.get('language');
//     print('box_value ${box?.language}');
//     String lang = Platform.localeName.split("_")[0];

//     if (box == null) {
//       preferencesBox.put('language', Preferences(language: lang));

//       return lang;
//     }

//     if (box.language == value || value == null) return box.language;

//     preferencesBox.put('language', Preferences(language: value));

//     print('VALUE $value BOX ${box.language}');

//     return value;
//   }
// }

class Visimo extends StatefulWidget {
  const Visimo({super.key});

  @override
  State<Visimo> createState() => _VisimoState();
}

class _VisimoState extends State<Visimo> {
  bool isDarkTheme = false;
  bool isLangChanged = false;
  void toggle() => setState(() => isDarkTheme = !isDarkTheme);

  String locale = 'fi';
  // final localeValue = Platform.localeName.split("_")[0];

  // final box = preferencesBox.get('language');

  // final String locale = box!.language.isEmpty ? localeValue : box.language;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    // String locale = "";

    // if (box == null) {
    //   setState(() {
    //     locale = localeValue;
    //   });
    //   return;
    // }

    // if (box!.language == locale) {
    //   return;
    // }

    // setState(() {
    //   locale = box!.language;
    //   preferencesBox.put('language', Preferences(language: locale));
    // });

    // setState(() {
    //   locale = UpdateHive.updateHive();
    // });
    // print(locale);
    super.initState();
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    // setState(() {
    //   locale = UpdateHive.updateHive();
    // });
    // final updatedBox = preferencesBox.get('language');
    // setState(() {
    //   locale = updatedBox!.language;
    // });
    // print('app $locale');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final watch = context.watch<HiveProvider>().preferences.language;

    // print(watch);
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(watch, watch.toUpperCase()),
      // debugShowCheckedModeBanner: false,
      // home: Test(
      //   key: UniqueKey(),
      // ),
      // home: const WorldScreen(),
      // home: const CreateVisicScreen(),
      home: const StartScreen(
          // toggle: toggle,
          // UniqueKey(), Need to prevent error: "A GlobalKey was used multiple times inside one widget's child list"
          // key: UniqueKey(),
          ),
    );
  }
}

Map<int, Color> color = {
  50: const Color.fromRGBO(235, 169, 31, 0.1),
  100: const Color.fromRGBO(235, 169, 31, .2),
  200: const Color.fromRGBO(235, 169, 31, .3),
  300: const Color.fromRGBO(235, 169, 31, .4),
  400: const Color.fromRGBO(235, 169, 31, .5),
  500: const Color.fromRGBO(235, 169, 31, .6),
  600: const Color.fromRGBO(235, 169, 31, .7),
  700: const Color.fromRGBO(235, 169, 31, .8),
  800: const Color.fromRGBO(235, 169, 31, .9),
  900: const Color.fromRGBO(235, 169, 31, 1),
};
