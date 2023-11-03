import 'package:flutter/material.dart';

class CustomizableTile extends StatelessWidget {
  const CustomizableTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.white,
            )),
        height: 64,
        width: 64,
        child: const Icon(Icons.colorize),
      ),
    );
  }
}
