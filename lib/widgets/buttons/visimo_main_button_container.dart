import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_visimo/theme/colors.dart';

import 'visimo_main_button_text.dart';

class VisimoMainButtonContainer extends StatelessWidget {
  const VisimoMainButtonContainer({
    super.key,
    required this.buttonName,
    required this.handler,
    this.hasIcon,
    this.color,
    required this.textColor,
    required this.offset,
    required this.transform,
    required this.isLoading,
    required this.isDisabled,
  });

  final String buttonName;
  final VoidCallback handler;
  final double offset;
  final double transform;

  final Color? color;
  final Color textColor;
  final SvgPicture? hasIcon;
  final bool isLoading;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      constraints: const BoxConstraints(maxHeight: 66),
      width: double.infinity,
      curve: Curves.easeInOut,
      transform: Matrix4.translationValues(0, transform, 0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          style: BorderStyle.solid,
          color: isDisabled ? VisimoColors.grey500 : VisimoColors.black,
        ),
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: isDisabled
            ? null
            : [
                BoxShadow(
                  offset: Offset(offset, offset),
                  color: VisimoColors.black,
                ),
              ],
      ),
      child: Material(
        color: VisimoColors.transparent,
        child: InkWell(
          onTap: isDisabled ? null : handler,
          splashColor: color != null
              ? Theme.of(context).scaffoldBackgroundColor.withOpacity(.2)
              : Theme.of(context).scaffoldBackgroundColor.withOpacity(.6),
          splashFactory: InkRipple.splashFactory,
          borderRadius: hasIcon != null
              ? BorderRadius.circular(8)
              : BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 12,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                if (hasIcon != null) hasIcon!,
                VisimoMainButtonText(
                  isLoading: isLoading,
                  buttonName: buttonName,
                  textColor: textColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
