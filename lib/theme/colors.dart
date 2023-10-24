import 'package:flutter/material.dart';

extension VisimoColors on Color {
  // INITIAL MATERIAL COLORS
  static const Color transparent = Color(0x00000000);
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  // static const MaterialColor grey = MaterialColor(
  //   _greyPrimaryValue,
  //   <int, Color>{
  //     50: Color(0xFFFAFAFA),
  //     100: Color(0xFFF5F5F5), // Grey_Light Alt Figma
  //     200: Color(0xFFEEEEEE),
  //     300: Color(0xFFE0E0E0),
  //     // only for raised button while pressed in light theme
  //     350: Color(0xFFDEDEDE), // Grey_Light Figma
  //     400: Color(0xFFBDBDBD),
  //     500: Color(_greyPrimaryValue),
  //     600: Color(0xFF757575),
  //     700: Color(0xFF616161),
  //     800: Color(0xFF474747), // Grey_Dark Figma
  //     850: Color(0xFF303030), // only for background color in dark theme
  //     900: Color(0xFF212121),
  //   },
  // );
  // static const int _greyPrimaryValue = 0xFFB6B6B6;

  static const Color grey100 = Color(0xFFF5F5F5); // Grey_Light Alt Figma
  static const Color grey200 = Color(0xFFDEDEDE); // Grey_Light Figma
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey400 = Color(0xFFBDBDBD);
  static const Color grey500 = Color(0xFFB6B6B6); // Grey Figma
  static const Color grey600 = Color(0xFF757575);
  static const Color grey700 = Color(0xFF616161);
  static const Color grey800 = Color(0xFF474747); // Grey_Dark Figma
  static const Color grey900 = Color(0xFF212121);

  // VISIMO LIGHT THEME COLORS
  static const Color lightBackdrop = Color(0xFFF3E3D2);
  static const Color lightSurface = Color(0xFFFCF4F0);
  static const Color lightYellow = Color(0xFFEBA91F);
  static const Color lightYellowAlt = Color(0xFFBD7331);
  static const Color lightGreen = Color(0xFF79B6A8);
  static const Color lightGreenAlt = Color(0xFF4C7A70);
  static const Color lightBlue = Color(0xFFB3E1EB);
  static const Color lightBlueAlt = Color(0xFF324C76);
  static const Color lightRed = Color(0xFFEFBDA0);
  static const Color lightRedAlt = Color(0xFFDC5C1D);

  // VISIMO DARK THEME COLORS
  static const Color darkBackdrop = Color(0xFF002039);
  static const Color darkSurface = Color(0xFF0F3D61);
  static const Color darkYellow = Color(0xFFFDD887);
  static const Color darkYellowAlt = Color(0xFFBF7331);
  static const Color darkGreen = Color(0xFF0F5F6A);
  static const Color darkGreenAlt = Color(0xFF013451);
  static const Color darkBlue = Color(0xFF3F87B8);
  static const Color darkBlueAlt = Color(0xFF012949);
  static const Color darkRed = Color(0xFFF76148);
  static const Color darkRedAlt = Color(0xFFAB706A);
}
