import 'package:flutter/material.dart';
import 'package:flutter_visimo/theme/colors.dart';

final darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    elevation: 0,
    surfaceTintColor: Colors.transparent,
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: VisimoColors.darkBackground,
    background: VisimoColors.darkBackground,
    primary: VisimoColors.darkYellow,
    onPrimary: VisimoColors.darkYellowAlt,
    secondary: VisimoColors.darkGreen,
    onSecondary: VisimoColors.darkGreenAlt,
    tertiary: VisimoColors.darkBlue,
    onTertiary: VisimoColors.darkBlueAlt,
    error: VisimoColors.darkRed,
    onError: VisimoColors.darkRedAlt,
    surface: VisimoColors.darkSurface,
  ),
  scaffoldBackgroundColor: VisimoColors.darkBackground,
  buttonTheme: ButtonThemeData(
    // Default button color
    // buttonColor: VisimoColors.darkSurface,
    // highlightColor: VisimoColors.darkSurface,
    // disabledColor: VisimoColors.black,
    // highlightColor: Colors.brown,
    colorScheme: ColorScheme.fromSeed(
      seedColor: VisimoColors.darkSurface,
      secondary: VisimoColors.darkGreen,
      primary: VisimoColors.darkYellow,
      error: VisimoColors.darkRed,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: VisimoColors.darkSurface,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: VisimoColors.darkRedAlt,
      ),
    ),
    errorStyle: const TextStyle(
      color: VisimoColors.darkRedAlt,
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
      color: VisimoColors.grey200,
      fontSize: 16,
      decoration: TextDecoration.none,
      decorationThickness: 0,
    ),
    headlineLarge: TextStyle(
      color: VisimoColors.grey200,
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      color: VisimoColors.grey200,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),
);
