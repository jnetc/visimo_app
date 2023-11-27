import 'package:flutter/material.dart';

class LinkInput extends StatelessWidget {
  const LinkInput(
      {super.key, required this.controller, required this.errorMessage});

  final TextEditingController controller;
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.black,
      keyboardAppearance: Brightness.dark,
      decoration: const InputDecoration().copyWith(
        hintText: 'Your link',
        errorText: errorMessage != "" ? errorMessage : null,
      ),
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Colors.black,
          ),
    );
  }
}
