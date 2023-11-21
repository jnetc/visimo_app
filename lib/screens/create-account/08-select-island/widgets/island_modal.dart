import 'package:flutter/material.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/island.dart';
import 'package:flutter_visimo/theme/colors.dart';

class IslandModal extends StatelessWidget {
  const IslandModal({
    super.key,
    required this.island,
  });

  final Island island;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        top: size16,
        right: size16,
        left: size16,
        bottom: size32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/islands/Island-${island.name.name}.webp',
            width: 350,
            height: 350,
            colorBlendMode: BlendMode.multiply,
            color: VisimoColors.lightSurface,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: size24),
          Text(
            island.description,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
