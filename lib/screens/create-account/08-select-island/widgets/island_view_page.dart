import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/extensions/capitalize.dart';
import 'package:flutter_visimo/models/island.dart';
import 'package:flutter_visimo/theme/colors.dart';

import 'island_modal.dart';
import 'island_selected.dart';

class IslandViewPage extends StatelessWidget {
  const IslandViewPage({
    super.key,
    required this.props,
    this.isSelected = false,
  });

  final Island props;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${props.island.name.toCapitalize()} Island',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: size24),
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/islands/Island-${props.island.name}.webp',
                // width: 350,
                // height: 350,
                colorBlendMode: BlendMode.multiply,
                color: VisimoColors.lightBackdrop,
                fit: BoxFit.cover,
              ),
              if (isSelected) const IslandSelected(),
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
                  text: props.description.substring(0, 70),
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
                          return IslandModal(props: props);
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
