import 'package:flutter/material.dart';
import 'package:flutter_visimo/screens/sign-in/signin_screen.dart';
import 'package:flutter_visimo/theme/colors.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account?',
          style: TextStyle(color: VisimoColors.grey100, fontSize: 18),
        ),
        TextButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignInScreen(),
            ),
          ),
          child: const Text(
            'Log in',
            style: TextStyle(
                color: VisimoColors.lightYellow,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
