import 'package:flutter/material.dart';

import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/user.dart';
import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/screens/create-account/05-add-skills/add_skills_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';
import 'package:provider/provider.dart';

class AddDescriptionScreen extends StatefulWidget {
  const AddDescriptionScreen({super.key});

  @override
  State<AddDescriptionScreen> createState() => _AddDescriptionScreenState();
}

class _AddDescriptionScreenState extends State<AddDescriptionScreen> {
  final _addDescriptionController = TextEditingController();
  bool focusValue = false;

  @override
  void dispose() {
    _addDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final safeHeight = MediaQuery.of(context).padding.top;
    final appBarHeight = AppBar().preferredSize.height;
    final screenViewHeight = maxHeight - (appBarHeight + safeHeight);
    final read = context.read<UserProvider>();

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: screenViewHeight,
          padding: const EdgeInsets.only(
            top: size16,
            right: size16,
            left: size16,
            bottom: size32,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const HeadlineLarge(text: 'A short description\nabout you'),
                  const SizedBox(height: size48),
                  TextField(
                    controller: _addDescriptionController,
                    minLines: 5,
                    maxLines: 10,
                    // onChanged: (value) => onTypeUsername(value),
                    cursorColor: Colors.black,
                    keyboardAppearance: Brightness.dark,
                    decoration: const InputDecoration()
                        .copyWith(hintText: 'Discribe yourself'),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'You can skip this step and do this anytime in your profile section.',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: size16),
                  VisimoMainButton(
                    buttonName: 'Continue',
                    isDisabled: false,
                    color: Theme.of(context).buttonTheme.colorScheme!.primary,
                    handler: () {
                      read.updateUser(
                          User(description: _addDescriptionController.text));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddSkillsScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // body: SingleChildScrollView(
      //   padding:
      //       const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 32),
      //   child: SizedBox(
      //     height: MediaQuery.of(context).size.height,
      //     child: Flex(
      //       direction: Axis.vertical,
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Column(
      //           crossAxisAlignment: CrossAxisAlignment.stretch,
      //           children: [
      //             const HeadlineLarge(text: 'A short description\nabout you'),
      //             const SizedBox(height: 48),
      //             TextField(
      //               controller: _addDescriptionController,
      //               minLines: 3,
      //               maxLines: 10,
      //               // onChanged: (value) => onTypeUsername(value),
      //               cursorColor: Colors.black,
      //               keyboardAppearance: Brightness.dark,
      //               decoration: const InputDecoration()
      //                   .copyWith(hintText: 'Helsinki, Suomi'),
      //               style: Theme.of(context).textTheme.bodySmall!.copyWith(
      //                     color: Colors.black,
      //                   ),
      //             ),
      //           ],
      //         ),
      //         Column(
      //           children: [
      //             Text(
      //               'You can do this anytime in your profile section.',
      //               style: Theme.of(context).textTheme.bodySmall,
      //             ),
      //             const SizedBox(height: 16),
      //             VisimoMainButton(
      //               buttonName: 'Continue',
      //               isDisabled: false,
      //               color: Theme.of(context).buttonTheme.colorScheme!.primary,
      //               handler: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => const AddSkillsScreen(),
      //                   ),
      //                 );
      //               },
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
