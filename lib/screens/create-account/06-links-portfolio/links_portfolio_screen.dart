import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/screens/create-account/06-links-portfolio/widgets/link_input.dart';
import 'package:flutter_visimo/screens/create-account/07-create-visic/create_visic_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';
import 'widgets/link_tile.dart';

class LinksPortfolioScreen extends StatefulWidget {
  const LinksPortfolioScreen({super.key});

  @override
  State<LinksPortfolioScreen> createState() => _LinksPortfolioScreenState();
}

class _LinksPortfolioScreenState extends State<LinksPortfolioScreen> {
  final _addSkillsController = TextEditingController();
  var links = ['https://facabook.com', 'https://instagram.com'];
  String errorMessage = '';

  @override
  void dispose() {
    _addSkillsController.dispose();
    super.dispose();
  }

  void onAddPortfolioLink(String link) {
    if (link.isEmpty) {
      errorMessage = 'Input is empty';
      return;
    }

    if (link.length < 8) {
      errorMessage = 'Link should be grater that 8';
      return;
    }

    if (!link.contains("https://")) {
      errorMessage = 'Link should be started as a https://';
      return;
    }
    errorMessage = '';
    links.insert(0, link);
    _addSkillsController.clear();
  }

  void removePortfolioLink(int index) {
    links.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final read = context.read<UserProvider>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(surfaceTintColor: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.only(
          top: size16,
          right: size16,
          left: size16,
          bottom: size32,
        ),
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const HeadlineLarge(text: 'Add links to your\nportfolios'),
                const SizedBox(height: size48),
                LinkInput(
                  controller: _addSkillsController,
                  errorMessage: errorMessage,
                ),
                const SizedBox(height: size18),
                VisimoMainButton(
                  buttonName: 'Add link',
                  handler: () {
                    setState(() {
                      onAddPortfolioLink(_addSkillsController.text);
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: size24),
            Expanded(
              child: Material(
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemCount: links.length,
                  itemBuilder: (context, index) {
                    return LinkTile(
                      index: index,
                      title: links[index],
                      onDeleteFromLink: () => removePortfolioLink(index),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: size24),
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
                    read.user.portfolioLinks = links.toList();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateVisicScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
