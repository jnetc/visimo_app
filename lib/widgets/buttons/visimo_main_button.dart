import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_visimo/theme/colors.dart';

class VisimoMainButton extends StatefulWidget {
  const VisimoMainButton({
    super.key,
    required this.buttonName,
    required this.handler,
    this.icon,
    this.color,
  });

  final String buttonName;
  final Color? color;
  final SvgPicture? icon;
  final VoidCallback handler;

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
  }

  void onReleaseButton() {
    setState(() {
      transform -= shifted;
      offset += shifted;
    });
  }

  @override
  Widget build(BuildContext context) {
    final defaultBtnColor =
        Theme.of(context).buttonTheme.colorScheme!.background;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: double.infinity,
      curve: Curves.easeInOut,
      transform: Matrix4.translationValues(0, transform, 0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          style: BorderStyle.solid,
          color: VisimoColors.black,
        ),
        color: widget.color ?? defaultBtnColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: Offset(offset, offset),
            color: VisimoColors.black,
          ),
        ],
      ),
      child: Material(
        color: VisimoColors.transparent,
        child: InkWell(
          onTap: widget.handler,
          onTapDown: (details) => onPressButton(),
          onTapUp: (details) => onReleaseButton(),
          splashColor: widget.color != null
              ? Theme.of(context).scaffoldBackgroundColor.withOpacity(.2)
              : Theme.of(context).scaffoldBackgroundColor.withOpacity(.6),
          splashFactory: InkRipple.splashFactory,
          borderRadius: widget.icon != null
              ? BorderRadius.circular(8)
              : BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 18, horizontal: 12), // without
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                if (widget.icon != null) widget.icon!,
                Center(
                  child: Text(
                    widget.buttonName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: widget.icon != null
                          ? VisimoColors.grey800
                          : VisimoColors.black,
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
