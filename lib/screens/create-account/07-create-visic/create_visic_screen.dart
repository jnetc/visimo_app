import 'package:flutter/material.dart';
import 'package:flutter_visimo/screens/create-account/07-create-visic/widgets/visic_tile_modal.dart';
import 'package:flutter_visimo/screens/create-account/widgets/selected.dart';
import 'package:flutter_visimo/theme/colors.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/visic.dart';
import 'package:flutter_visimo/screens/create-account/07-create-visic/widgets/visic_tile.dart';
import 'package:flutter_visimo/screens/create-account/08-select-island/select_island_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class CreateVisicScreen extends StatefulWidget {
  const CreateVisicScreen({super.key});

  @override
  State<CreateVisicScreen> createState() => _CreateVisicScreenState();
}

class _CreateVisicScreenState extends State<CreateVisicScreen> {
  final bool isSelected = false;
  Visic visic = visics[0];

  @override
  void initState() {
    final initVisic =
        Provider.of<UserProvider>(context, listen: false).user.visic;
    if (initVisic == null) {
      return;
    }

    setState(() => visic = initVisic);
    print(initVisic.name);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final read = context.read<UserProvider>().user;
    // print(watch.username);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: size32, left: size16, right: size16),
            child: HeadlineLarge(text: 'Let’s start to\ncreate Visik'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: size16),
            child: Text(
              visic.name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: size16),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  VisicTileModal(
                    visic: visic,
                    child: SvgPicture.asset(
                      'assets/visic/visic-base.svg',
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                  ),
                  // const Selected(),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: size16),
              itemCount: visics.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (context, index) => VisicTile(visic: visics[index]),
            ),
          ),
          const SizedBox(height: size32),
          Padding(
            padding: const EdgeInsets.only(
                left: size16, right: size16, bottom: size32),
            child: VisimoMainButton(
              buttonName: 'Continue',
              isDisabled: false,
              color: Theme.of(context).buttonTheme.colorScheme!.primary,
              handler: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectIslandScreen(),
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
