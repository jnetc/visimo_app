import 'package:flutter/material.dart';
import 'package:flutter_visimo/screens/phone-verifications/widgets/verification_number.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.only(right: 16, top: 16, left: 16),
        // physics: const NeverScrollableScrollPhysics(),s
        children: [
          const HeadlineLarge(text: 'Enter verification\ncode'),
          const SizedBox(height: 48),
          const Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              VerificationNumber(codeKey: '5'),
              VerificationNumber(codeKey: '7'),
              VerificationNumber(codeKey: '0'),
              VerificationNumber(codeKey: '4'),
              VerificationNumber(codeKey: '4'),
              VerificationNumber(codeKey: '9'),
            ],
          ),
          const SizedBox(height: 24),
          RichText(
            text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall,
                text:
                    'We are sent a text message with your verification code to ',
                children: [
                  TextSpan(
                      text: '0501234567',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onError,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ))
                ]),
          ),
          const SizedBox(height: 48),
          Image.asset(
            'assets/illustrations/verification-number-screen.png',
            color: Theme.of(context).scaffoldBackgroundColor,
            colorBlendMode: BlendMode.multiply,
            height: 224,
            width: 188,
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 16, bottom: 32, left: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            VisimoMainButton(buttonName: 'Resend code', handler: () {}),
            const SizedBox(height: 18),
            VisimoMainButton(
                buttonName: 'Continue',
                color: Theme.of(context).buttonTheme.colorScheme!.primary,
                handler: () {}),
          ],
        ),
      ),
    );
  }
}
