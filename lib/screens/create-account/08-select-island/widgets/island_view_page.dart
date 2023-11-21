import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/extensions/capitalize.dart';
import 'package:flutter_visimo/models/island.dart';
import 'package:flutter_visimo/theme/colors.dart';

import 'island_modal.dart';

class IslandViewPage extends StatelessWidget {
  const IslandViewPage({
    super.key,
    required this.island,
    this.isSelected = false,
  });

  final Island island;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${island.name.name.capitalize()} Island',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: size24),
        Expanded(
          child: Stack(
            children: [
              Image.asset(
                'assets/islands/Island-${island.name.name}.webp',
                width: 350,
                height: 350,
                colorBlendMode: BlendMode.multiply,
                color: VisimoColors.lightBackdrop,
                fit: BoxFit.cover,
              ),
              if (isSelected) const Text('Selected'),
            ],
          ),
        ),
        const SizedBox(height: size24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: size16),
          child: RichText(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: Theme.of(context).textTheme.bodySmall,
              children: [
                TextSpan(
                  text: island.description.substring(0, 70),
                ),
                const TextSpan(text: '... '),
                TextSpan(
                  text: 'Read more',
                  style: const TextStyle(
                    color: VisimoColors.lightYellowAlt,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      showModalBottomSheet(
                        backgroundColor: VisimoColors.lightSurface,
                        elevation: 0,
                        isScrollControlled: true,
                        showDragHandle: true,
                        useSafeArea: true,
                        context: context,
                        builder: (context) {
                          return IslandModal(island: island);
                        },
                      );
                    },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
