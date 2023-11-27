import 'package:flutter/material.dart';

import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/island.dart';

class IslandModal extends StatelessWidget {
  const IslandModal({
    super.key,
    required this.props,
  });

  final Island props;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: bodyPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/islands/Island-${props.island.name}.webp',
            width: 350,
            height: 350,
            colorBlendMode: BlendMode.multiply,
            color: Theme.of(context).colorScheme.surface,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: size24),
          Text(
            props.description,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
