import 'package:flutter/material.dart';
import 'package:flutter_visimo/screens/phone-verifications/verification_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        physics: const NeverScrollableScrollPhysics(),
        // mainAxisSize: MainAxisSize.max,
        children: [
          const TitleLarge(text: 'What’s your phone\nnumber?'),
          const SizedBox(height: 48),
          TextFormField(
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            // autofocus: true,
            style: Theme.of(context).textTheme.bodySmall,

            decoration: InputDecoration(
              hintText: '+358 05 1234567',
              hintStyle: const TextStyle(color: Colors.grey),
              fillColor: Theme.of(context).colorScheme.surface,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.black)),
            ),
            cursorColor: Colors.black,
          ),
          const SizedBox(height: 48),
          Image.asset(
            'assets/illustrations/phone-number-screen.png',
            color: Theme.of(context).scaffoldBackgroundColor,
            colorBlendMode: BlendMode.multiply,
            fit: BoxFit.contain,
            width: 260,
            height: 300,
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, bottom: 32),
        child: VisimoMainButton(
            buttonName: 'Continue',
            handler: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VerificationScreen(),
                ),
              );
            }),
      ),
    );
  }
}
