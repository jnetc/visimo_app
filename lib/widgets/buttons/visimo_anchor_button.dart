import 'package:flutter/material.dart';

class VisimoAnchorButton extends StatelessWidget {
  const VisimoAnchorButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  //Add more fields as desired
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 2.5,
              color: Color.fromARGB(255, 54, 113, 161),
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 54, 113, 161),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
