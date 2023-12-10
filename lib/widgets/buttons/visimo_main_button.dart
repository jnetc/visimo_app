import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_visimo/theme/colors.dart';

import 'visimo_main_button_container.dart';

class VisimoMainButton extends StatefulWidget {
  const VisimoMainButton({
    super.key,
    required this.buttonName,
    required this.handler,
    this.hasIcon,
    this.color,
    this.isLoading = false,
    this.isDisabled = false,
  });

  final String buttonName;
  final Color? color;
  final SvgPicture? hasIcon;
  final VoidCallback handler;
  final bool isLoading;
  final bool isDisabled;

  @override
  State<VisimoMainButton> createState() => _VisimoMainButtonState();
}

class _VisimoMainButtonState extends State<VisimoMainButton> {
  double offset = 5;
  double transform = 0;
  double shifted = 2;

  void onPressTab() async {
    setState(() {
      transform += shifted;
      offset -= shifted;
    });

    await Future.delayed(const Duration(milliseconds: 200));

    setState(() {
      transform = 0;
      offset = 5;
    });

    await Future.delayed(const Duration(milliseconds: 100));
    widget.handler();
  }

  @override
  Widget build(BuildContext context) {
    final defaultBtnColor =
        Theme.of(context).buttonTheme.colorScheme!.background;

    Color color = widget.color ?? defaultBtnColor;
    Color textColor = VisimoColors.black;

    if (widget.isDisabled) {
      textColor = VisimoColors.grey500;
      color = defaultBtnColor;
    }

    if (widget.hasIcon != null) {
      textColor = VisimoColors.grey800;
    }

    return VisimoMainButtonContainer(
      buttonName: widget.buttonName,
      handler: onPressTab,
      hasIcon: widget.hasIcon,
      color: color,
      textColor: textColor,
      offset: offset,
      transform: transform,
      isLoading: widget.isLoading,
      isDisabled: widget.isDisabled,
    );
  }
}
