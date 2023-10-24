import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_visimo/widgets/input-fields/eye_suffix_icon.dart';
import 'package:flutter_visimo/theme/colors.dart';

class InputFieldWithIcons extends StatefulWidget {
  const InputFieldWithIcons({
    super.key,
    required this.controller,
    required this.hintText,
    required this.prefixIconSvg,
    this.suffixIconSvg = false,
  });

  final TextEditingController controller;
  final String hintText;
  final String prefixIconSvg;
  final bool suffixIconSvg;

  @override
  State<InputFieldWithIcons> createState() => _InputFieldWithIconsState();
}

class _InputFieldWithIconsState extends State<InputFieldWithIcons> {
  var isHide = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.none,
      obscureText: widget.suffixIconSvg ? isHide : false,
      validator: (value) {
        return null;
      },
      // autofillHints: const Iterable.empty(),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: SvgPicture.asset(
            widget.prefixIconSvg,
            colorFilter: const ColorFilter.mode(
              VisimoColors.grey500,
              BlendMode.srcIn,
            ),
          ),
        ),
        suffixIcon: widget.suffixIconSvg
            ? EyeSuffixIcon(
                onTab: () => setState(() => isHide = !isHide),
                isHide: isHide,
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        fillColor: VisimoColors.lightSurface,
        filled: true,
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: VisimoColors.grey500),
        contentPadding: const EdgeInsets.all(12),
      ),
      style: const TextStyle(
        fontSize: 18,
        decorationThickness: 0,
        decoration: TextDecoration.none,
      ),
    );
  }
}
