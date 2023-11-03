import 'package:flutter/material.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class SelectIslandScreen extends StatelessWidget {
  const SelectIslandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Column(children: [
          HeadlineLarge(text: 'Select your\npreferred island'),
          SizedBox(height: size48),
        ]),
      ),
    );
  }
}
