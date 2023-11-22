import 'package:flutter/material.dart';
import 'package:flutter_visimo/theme/colors.dart';
// import 'package:flutter_visimo/theme/extension_theme.dart';
import 'package:flutter_visimo/visimo_app.dart';

final darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    elevation: 0,
  ),
  // brightness: Brightness.dark,
  scaffoldBackgroundColor: VisimoColors.darkBackdrop,
  buttonTheme: ButtonThemeData(
    buttonColor: VisimoColors.darkSurface,
    // highlightColor: VisimoColors.darkSurface,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: MaterialColor(VisimoColors.darkSurface.value, color),
      // primarySwatch: MaterialColor(Colors.blue.shade100.value, color),
      accentColor: VisimoColors.darkGreen,
      backgroundColor: VisimoColors.darkYellow,
      errorColor: VisimoColors.darkRed,
    ),
  ),
  // extensions: const <ThemeExtension<dynamic>>[VisimoStyle.dark],
);
