import 'package:flutter/material.dart';

// INIT VISIMO THEME
// Extend special properties for dark and light theme
// How ctreate: https://www.youtube.com/watch?v=8-szcYzFVao
// Example:     https://dartpad.dev/?id=4d6a932542c15f402a89269d80fe52b5&channel=beta
class VisimoStyle extends ThemeExtension<VisimoStyle> {
  const VisimoStyle({this.visimoGreen});

  final Color? visimoGreen;

  @override
  ThemeExtension<VisimoStyle> lerp(
      ThemeExtension<VisimoStyle>? other, double t) {
    if (other is! VisimoStyle) {
      return this;
    }

    return VisimoStyle(
      visimoGreen: Color.lerp(visimoGreen, other.visimoGreen, t),
    );
  }

  @override
  VisimoStyle copyWith({Color? visimoGreen}) {
    return VisimoStyle(
      visimoGreen: visimoGreen ?? this.visimoGreen,
    );
  }

  @override
  String toString() => 'VisimoStyle(color: $visimoGreen)';

  static const light = VisimoStyle(
    visimoGreen: Color(0xFF79B6A8),
  );
  static const dark = VisimoStyle(
    visimoGreen: Color(0xFF0F496A),
  );
}
