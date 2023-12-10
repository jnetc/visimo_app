import 'package:flutter/material.dart';

class VisimoMainButtonText extends StatelessWidget {
  const VisimoMainButtonText({
    super.key,
    required this.isLoading,
    required this.textColor,
    required this.buttonName,
  });

  final bool isLoading;
  final String buttonName;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLoading
          ? const AspectRatio(
              aspectRatio: 1,
              child: CircularProgressIndicator(
                color: Colors.black,
                strokeWidth: 3,
              ),
            )
          : Text(
              buttonName,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }
}
