import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_visimo/screens/start/widgets/create_account.dart';
import 'package:flutter_visimo/screens/start/widgets/have_account.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            'assets/illustrations/welcome-screen.svg',
            // fit: BoxFit.cover,
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 32, left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                CreateAccount(),
                SizedBox(height: 18),
                HaveAccount(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
