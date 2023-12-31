import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_visimo/theme/colors.dart';

class VisimoMainButton extends StatefulWidget {
  const VisimoMainButton({
    super.key,
    required this.buttonName,
    required this.handler,
    this.hasIcon,
    this.color,
    this.isDisabled = false,
  });

  final String buttonName;
  final Color? color;
  final SvgPicture? hasIcon;
  final VoidCallback handler;
  final bool isDisabled;

  @override
  State<VisimoMainButton> createState() => _VisimoMainButtonState();
}

class _VisimoMainButtonState extends State<VisimoMainButton> {
  double offset = 5;
  double transform = 0;
  double shifted = 2;

  void onPressButton() {
    setState(() {
      transform += shifted;
      offset -= shifted;
    });

    Future.delayed(
      const Duration(milliseconds: 300),
      () => setState(() {
        transform = 0;
        offset = 5;
      }),
    );
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
          color: widget.isDisabled ? VisimoColors.grey500 : VisimoColors.black,
        ),
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: widget.isDisabled
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
          onTap: widget.isDisabled ? null : widget.handler,
          onTapDown: widget.isDisabled ? null : (details) => onPressButton(),
          splashColor: widget.color != null
              ? Theme.of(context).scaffoldBackgroundColor.withOpacity(.2)
              : Theme.of(context).scaffoldBackgroundColor.withOpacity(.6),
          splashFactory: InkRipple.splashFactory,
          borderRadius: widget.hasIcon != null
              ? BorderRadius.circular(8)
              : BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 18, horizontal: 12), // without
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                if (widget.hasIcon != null) widget.hasIcon!,
                Center(
                  child: Text(
                    widget.buttonName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // if (widget.icon != null) const SizedBox(width: 32, height: 32)
              ],
            ),
            // child: Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: widget.icon != null
            //       ? MainAxisAlignment.spaceBetween
            //       : MainAxisAlignment.center,
            //   children: [
            //     if (widget.icon != null) widget.icon!,
            //     Text(
            //       widget.buttonName,
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         color: widget.icon != null
            //             ? VisimoColors.grey800
            //             : VisimoColors.black,
            //         fontSize: 18,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //     // if (widget.icon != null) const SizedBox(width: 32, height: 32)
            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}
