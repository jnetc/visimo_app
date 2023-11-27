import 'package:flutter/material.dart';
import 'package:flutter_visimo/theme/colors.dart';

class IslandSelected extends StatelessWidget {
  const IslandSelected({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      color: VisimoColors.lightBackground,
      width: double.infinity,
      child: const Text(
        'Selected',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: VisimoColors.lightYellowAlt,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
