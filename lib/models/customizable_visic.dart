import 'dart:ui';

class CustomizableVisic {
  CustomizableVisic(
    this.eyeColor,
    this.headBox,
    this.bodyBox,
    this.legBox,
    this.rightHandBox,
    this.leftHandBox, {
    required this.bodyColor,
  });

  final Color bodyColor;
  final Color eyeColor;
  final String headBox;
  final String bodyBox;
  final String legBox;
  final String rightHandBox;
  final String leftHandBox;
}
