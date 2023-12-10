import 'package:flutter/material.dart';

class Selected extends StatelessWidget {
  const Selected({super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        color: Theme.of(context).colorScheme.background,
        width: double.infinity,
        child: Text(
          'Selected',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
