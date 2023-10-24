import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_visimo/theme/colors.dart';

class EyeSuffixIcon extends StatelessWidget {
  const EyeSuffixIcon({super.key, required this.onTab, required this.isHide});

  final VoidCallback onTab;
  final bool isHide;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
      child: GestureDetector(
        onTap: onTab,
        child: SvgPicture.asset(
          isHide ? 'assets/icons/eye-cloused.svg' : 'assets/icons/eye.svg',
          colorFilter: const ColorFilter.mode(
            VisimoColors.black,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
