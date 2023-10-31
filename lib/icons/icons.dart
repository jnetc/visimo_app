import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_visimo/theme/colors.dart';

final appleAccountIcon = SvgPicture.asset(
  'assets/icons/logo-apple.svg',
  height: 24,
  width: 24,
  colorFilter: const ColorFilter.mode(
    VisimoColors.black,
    BlendMode.srcIn,
  ),
);

final googleAccountIcon = SvgPicture.asset(
  'assets/icons/logo-google.svg',
  height: 24,
  width: 24,
  colorFilter: const ColorFilter.mode(
    VisimoColors.black,
    BlendMode.srcIn,
  ),
);
final phoneIcon = SvgPicture.asset(
  'assets/icons/phone.svg',
  height: 24,
  width: 24,
  colorFilter: const ColorFilter.mode(
    VisimoColors.black,
    BlendMode.srcIn,
  ),
);
Widget imagePickerIcon({double height = 24, double width = 24}) =>
    SvgPicture.asset(
      'assets/icons/image-picker.svg',
      height: height,
      width: width,
      colorFilter: const ColorFilter.mode(
        VisimoColors.black,
        BlendMode.srcIn,
      ),
    );
