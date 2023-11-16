import 'package:flutter/material.dart';
import 'package:flutter_visimo/icons/icons.dart';
import 'package:flutter_visimo/theme/colors.dart';

class LinkTile extends StatelessWidget {
  const LinkTile({
    super.key,
    required this.index,
    required this.title,
    required this.onDeleteFromLink,
  });

  final int index;
  final String title;
  final void Function() onDeleteFromLink;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      minVerticalPadding: 15,
      trailing: GestureDetector(
        onTap: onDeleteFromLink,
        child: deleteIcon,
      ),
      textColor: VisimoColors.black,
      tileColor: VisimoColors.lightSurface,
      title: Text(title),
    );
  }
}
