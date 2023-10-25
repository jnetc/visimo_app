import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(top: 16, bottom: 48, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                fillColor: Theme.of(context).colorScheme.surface,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.surface,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 48),
            Image.asset(
              'assets/illustrations/hand-with-phone.png',
              color: Theme.of(context).scaffoldBackgroundColor,
              colorBlendMode: BlendMode.multiply,
              fit: BoxFit.contain,
              width: 260,
              height: 300,
            ),
            // const Spacer(),
            VisimoMainButton(buttonName: 'Continue', handler: () {}),
            // const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
