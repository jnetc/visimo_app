import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/visic.dart';

class VisicTileContainer extends StatelessWidget {
  const VisicTileContainer({
    super.key,
    required this.visic,
  });

  final Visic visic;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: visic.isSelected ? Colors.black : Colors.white,
          width: 2,
        ),
      ),
      height: size64,
      width: size64,
      padding: const EdgeInsets.all(16),
      child: SvgPicture.asset(visic.image),
    );
  }
}
