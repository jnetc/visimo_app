import 'package:flutter/material.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/visic.dart';
import 'package:flutter_visimo/theme/colors.dart';

class VisicTileContainer extends StatelessWidget {
  const VisicTileContainer({
    super.key,
    required this.visic,
  });

  final Visic visic;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.start,

      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: visic.isSelected ? Colors.black : Colors.transparent,
                width: 2,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  visic.image,
                  opacity: visic.type == 'locked'
                      ? const AlwaysStoppedAnimation(.5)
                      : const AlwaysStoppedAnimation(1),
                ),
                // Image.asset(visic.image),
                if (!visic.type.contains('common'))
                  Positioned(
                    bottom: 0,
                    child: SvgPicture.asset('assets/ratings/${visic.type}.svg'),
                  ),
              ],
            ),
          ),
        ),
        Text(
          visic.name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: visic.type == 'locked'
                ? VisimoColors.grey500
                : VisimoColors.grey800,
            fontSize: size16,
            decoration: TextDecoration.none,
            decorationThickness: 0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
