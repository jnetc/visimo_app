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

  textTheme: const TextTheme(
    bodySmall: TextStyle(
      color: VisimoColors.grey800,
      fontSize: 16,
    ),
    titleLarge: TextStyle(
      color: VisimoColors.grey800,
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),
  ),

  useMaterial3: true,
  // extensions: const <ThemeExtension<dynamic>>[
  //   VisimoStyle.light,
  // ],
);
