import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_visimo/screens/welcome/widgets/create_account.dart';
import 'package:flutter_visimo/screens/welcome/widgets/have_account.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
            padding: EdgeInsets.only(bottom: 48, left: 16, right: 16),
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
