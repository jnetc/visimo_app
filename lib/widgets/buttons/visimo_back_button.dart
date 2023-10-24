import 'package:flutter/material.dart';
import 'package:flutter_visimo/theme/colors.dart';

class VisimoBackButton extends StatelessWidget {
  const VisimoBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      // constraints: const BoxConstraints(maxHeight: 32, maxWidth: 24),
      onPressed: () => Navigator.maybePop(context),
      style: ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(Size(18, 18)),
        maximumSize: const MaterialStatePropertyAll(Size(24, 24)),
        iconSize: const MaterialStatePropertyAll(24),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        backgroundColor:
            const MaterialStatePropertyAll(VisimoColors.lightSurface),
      ),
      icon: const Icon(Icons.arrow_back, size: 24),
    );
  }
}
