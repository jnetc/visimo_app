import 'package:flutter/material.dart';

class VerificationNumber extends StatelessWidget {
  const VerificationNumber({super.key, required this.codeKey});

  final String codeKey;

  @override
  Widget build(BuildContext context) {
    final flexSize = MediaQuery.of(context);
    const double boxSize = 56;

    print(flexSize);

    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        height: boxSize,
        width: boxSize,
        // color: Theme.of(context).colorScheme.surface,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Center(
          child: Text(
            codeKey,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onError,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
