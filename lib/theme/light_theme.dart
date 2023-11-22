import 'package:flutter/material.dart';
import 'package:flutter_visimo/theme/colors.dart';
// import 'package:flutter_visimo/theme/icon_set.dart';
// import 'package:flutter_visimo/visimo_app.dart';

final lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    elevation: 0,
  ),
  // brightness: Brightness.light,
  // scaffoldBackgroundColor: Body background-color
  // colorScheme: ColorScheme.fromSeed(seedColor: VisimoColors.lightBackdrop),
  // colorScheme: ColorScheme.fromSwatch(backgroundColor: ),
  primaryColor: VisimoColors.lightYellow,

  colorScheme: ColorScheme.fromSeed(
    seedColor: VisimoColors.lightBackdrop,
    primary: VisimoColors.lightYellow,
    onPrimary: VisimoColors.lightYellowAlt,
    error: VisimoColors.lightRed,
    onError: VisimoColors.lightRedAlt,
    secondary: VisimoColors.lightGreen,
    onSecondary: VisimoColors.lightGreenAlt,
    tertiary: VisimoColors.lightBlue,
    onTertiary: VisimoColors.lightBlueAlt,
    surface: VisimoColors.lightSurface,
    background: VisimoColors.lightBackdrop,
  ),
  scaffoldBackgroundColor: VisimoColors.lightBackdrop,

  // primaryColor: ColorSwatch(VisimoColors.lightYellow.value, color),

  buttonTheme: ButtonThemeData(
    // Default button color
    // buttonColor: VisimoColors.lightSurface,
    // highlightColor: VisimoColors.lightSurface,
    // disabledColor: VisimoColors.black,
    // highlightColor: Colors.brown,
    colorScheme: ColorScheme.fromSeed(
      seedColor: VisimoColors.lightSurface,
      secondary: VisimoColors.lightGreen,
      primary: VisimoColors.lightYellow,
      error: VisimoColors.lightRed,
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: VisimoColors.lightSurface,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: VisimoColors.lightRedAlt,
      ),
    ),
    errorStyle: const TextStyle(
      color: VisimoColors.lightRedAlt,
      fontWeight: FontWeight.bold,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.black,
      ),
    ),
    hintStyle: const TextStyle(
      color: Colors.grey,
      fontSize: 16,
    ),
  ),

  textTheme: const TextTheme(
    bodySmall: TextStyle(
      color: VisimoColors.grey800,
      fontSize: 16,
      decoration: TextDecoration.none,
      decorationThickness: 0,
    ),
    headlineLarge: TextStyle(
      color: VisimoColors.grey800,
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      color: VisimoColors.grey800,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),
  // extensions: const <ThemeExtension<dynamic>>[
  //   VisimoStyle.light,
  // ],
);
