import 'package:flutter/material.dart';
import 'package:flutter_visimo/models/visic.dart';

import 'visic_tile_modal.dart';
import 'visic_tile_container.dart';

class VisicTile extends StatelessWidget {
  const VisicTile({super.key, required, required this.visic});

  final Visic visic;

  @override
  Widget build(BuildContext context) {
    return VisicTileModal(
      visic: visic,
      child: VisicTileContainer(visic: visic),
    );
  }
}
