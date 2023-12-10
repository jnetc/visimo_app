import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WorldMap extends StatelessWidget {
  const WorldMap({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/world/map-islands.svg',
      fit: BoxFit.contain,
    );
  }
}
