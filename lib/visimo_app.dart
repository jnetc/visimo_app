import 'package:flutter/material.dart';
// import 'package:flutter_visimo/screens/signin_screen.dart';
import 'package:flutter_visimo/screens/start/start_screen.dart';
// import 'package:flutter_visimo/theme/colors.dart';
import 'package:flutter_visimo/theme/dark_theme.dart';

// import 'package:flutter_visimo/screens/signup_screen.dart';
// import 'package:flutter_visimo/theme/extension_theme.dart';
import 'package:flutter_visimo/theme/light_theme.dart';

class Visimo extends StatefulWidget {
  const Visimo({super.key});

  @override
  State<Visimo> createState() => _VisimoState();
}

class _VisimoState extends State<Visimo> {
  bool isDarkTheme = false;
  void toggle() => setState(() => isDarkTheme = !isDarkTheme);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      // debugShowCheckedModeBanner: false,
      // home: Test(
      //   key: UniqueKey(),
      // ),
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
