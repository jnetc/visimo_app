import 'package:flutter/material.dart';
import 'package:flutter_visimo/theme/extension_theme.dart';

// BUTTON STYLES
const text = MaterialStatePropertyAll(
  TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
);

const padding = MaterialStatePropertyAll(
  EdgeInsetsDirectional.symmetric(vertical: 24),
);

// const borderRadius = MaterialStatePropertyAll<Box>();
const borderRadius = MaterialStatePropertyAll(
  RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  ),
);

const border = MaterialStatePropertyAll(
  BorderSide(
    width: 2,
    color: Colors.black,
    style: BorderStyle.solid,
  ),
);

const active = MaterialStatePropertyAll(Colors.white);

// DEFAULT BUTTON FOR DARK/LIGHT THEME
const ElevatedButtonThemeData elevatedButtonLightTheme =
    ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(
      Color(0xFFFCF4F0),
    ),
    // Color when touch :active
    // foregroundColor: active,
    padding: padding,
    // Border properties
    side: border,
    // Border radius, border shapes
    shape: borderRadius,
    textStyle: text,
    // elevation: MaterialStatePropertyAll(10.0),
    // shadowColor: MaterialStatePropertyAll(Colors.black),
  ),
);

const ElevatedButtonThemeData elevatedButtonDarkTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(
      Color.fromARGB(255, 181, 214, 251),
    ),
    // Color when touch :active
    // foregroundColor: active,
    padding: padding,
    // Border properties
    side: border,
    // Border radius, border shapes
    shape: borderRadius,
    textStyle: text,
  ),
);

// BUTTON COLOR THEME
// Using extension to attach the ElevatedButton additional color style
extension ExtendedElevatedButton on ElevatedButton {
  ElevatedButton yellowButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFEBA91F),
        // Color when touch :active
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed,
      child: child,
    );
  }

  ElevatedButton greenButton(VisimoStyle colors) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: colors.visimoGreen,
        foregroundColor: Colors.white,

        // textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      onPressed: onPressed,
      child: child,
    );
  }

  ElevatedButton redButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFEFBDA0),
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}

// BUTTON CONTAINER SHADOW

const shadow = BoxDecoration(
  boxShadow: [
    BoxShadow(
      offset: Offset(5, 5),
      color: Colors.black,
    ),
  ],
  borderRadius: BorderRadius.all(
    Radius.circular(12),
  ),
);
