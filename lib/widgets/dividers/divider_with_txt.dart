import 'package:flutter/material.dart';
import 'package:flutter_visimo/theme/colors.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Divider(),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: const Text(
            'OR',
            style: TextStyle(
              color: VisimoColors.grey500,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
