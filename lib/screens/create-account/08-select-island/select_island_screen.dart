import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/island.dart';
import 'package:flutter_visimo/models/user.dart';
import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/screens/create-account/09-account-created/account_created_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

import 'helper/custom_physics.dart';
import 'widgets/island_view_page.dart';

class SelectIslandScreen extends StatefulWidget {
  const SelectIslandScreen({super.key});

  @override
  State<SelectIslandScreen> createState() => _SelectIslandScreenState();
}

class _SelectIslandScreenState extends State<SelectIslandScreen> {
  final ValueNotifier<int> _valueNotifier = ValueNotifier(1);
  PageController _pageController = PageController();
  String selectedIslandName = '';

  @override
  void initState() {
    super.initState();
    // Get User model from Provider
    final initUser = Provider.of<UserProvider>(context, listen: false).user;
    // Is island was selected
    if (initUser.island == null) {
      return;
    }
    // Find index
    final indexOfIsland = islands.indexOf(initUser.island!);
    // Set values from Provider
    _pageController = PageController(initialPage: indexOfIsland);
    _valueNotifier.value = indexOfIsland + 1;
    selectedIslandName = islands[indexOfIsland].island.name;
  }

  @override
  void dispose() {
    _valueNotifier.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _getPageCount(int page) {
    _valueNotifier.value = page + 1;
  }

  void _updateIsland() {
    final read = Provider.of<UserProvider>(context, listen: false);

    Island island = islands[_valueNotifier.value - 1];

    read.updateUserIsland(User(island: island));
  }

  void _selectIsland(int value) {
    _updateIsland();

    setState(() => selectedIslandName = islands[value].island.name);
  }

  void _setIsland(BuildContext context) {
    _updateIsland();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AccountCreatedScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            child: PageView.builder(
              // allowImplicitScrolling: true,

              controller: _pageController,
              itemCount: islands.length,
              // physics: const BouncingScrollPhysics(), // Кэширует элементы списка
              // physics: const ClampingScrollPhysics(), // Не кэширует элементы списка
              physics: const CustomPageViewScrollPhysics(),
              onPageChanged: (int value) => _getPageCount(value++),
              itemBuilder: (context, int value) {
                return GestureDetector(
                  dragStartBehavior: DragStartBehavior.down,
                  onTapUp: (details) => _selectIsland(value),
                  child: IslandViewPage(
                    props: islands[value],
                    isSelected:
                        selectedIslandName == islands[value].island.name,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: size24),
          Center(
            child: ValueListenableBuilder(
              valueListenable: _valueNotifier,
              builder: (context, value, _) => Text(
                '${value.toString()}/${islands.length}', // Counter 1 / 7
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
              isDisabled: selectedIslandName.isEmpty,
              color: Theme.of(context).buttonTheme.colorScheme!.primary,
              handler: () => _setIsland(context),
            ),
          ),
        ],
      ),
    );
  }
}
