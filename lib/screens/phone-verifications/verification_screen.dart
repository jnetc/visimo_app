import 'package:flutter/material.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          TitleLarge(text: 'Enter verification\ncode'),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
