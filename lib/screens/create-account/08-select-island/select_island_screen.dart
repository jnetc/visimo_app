import 'package:flutter/material.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/island.dart';
import 'package:flutter_visimo/models/user.dart';
import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/screens/create-account/09-account-created/account_created_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';
import 'package:provider/provider.dart';

import 'widgets/island_view_page.dart';

class SelectIslandScreen extends StatefulWidget {
  const SelectIslandScreen({super.key});

  @override
  State<SelectIslandScreen> createState() => _SelectIslandScreenState();
}

class _SelectIslandScreenState extends State<SelectIslandScreen> {
  final ValueNotifier<int> _valueNotifier = ValueNotifier(1);
  final int allIslands = islands.length;

  @override
  void dispose() {
    _valueNotifier.dispose();
    super.dispose();
  }

  void getPageCount(int page) {
    _valueNotifier.value = page + 1;
  }

  @override
  Widget build(BuildContext context) {
    final read = context.read<UserProvider>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: size16,
              right: size16,
              left: size16,
            ),
            child: HeadlineLarge(text: 'Select your\npreferred island'),
          ),
          const SizedBox(height: size48),
          Expanded(
            child: PageView(
              onPageChanged: (int value) => getPageCount(value++),
              children: islands
                  .map((Island island) => IslandViewPage(island: island))
                  .toList(),
            ),
          ),
          const SizedBox(height: size24),
          Center(
            child: ValueListenableBuilder(
              valueListenable: _valueNotifier,
              builder: (context, value, _) => Text(
                '${value.toString()}/$allIslands',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          const SizedBox(height: size32),
          Padding(
            padding: const EdgeInsets.only(
              right: size16,
              left: size16,
              bottom: size32,
            ),
            child: VisimoMainButton(
              buttonName: 'Continue',
              isDisabled: false,
              color: Theme.of(context).buttonTheme.colorScheme!.primary,
              handler: () {
                read.updateUser(
                    User(island: islands[_valueNotifier.value - 1]));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountCreatedScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
