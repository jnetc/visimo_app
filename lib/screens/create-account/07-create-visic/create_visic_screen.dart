import 'package:flutter/material.dart';
import 'package:flutter_visimo/screens/create-account/07-create-visic/widgets/visic_tile_modal.dart';
import 'package:flutter_visimo/theme/colors.dart';
import 'package:provider/provider.dart';

import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/visic.dart';
import 'package:flutter_visimo/screens/create-account/07-create-visic/widgets/visic_tile.dart';
import 'package:flutter_visimo/screens/create-account/08-select-island/select_island_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';

const filter = ['all', 'Movie Hero', 'Nature', 'Workers', 'Rebels', 'Monsters'];

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
    // print(initVisic.name);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final read = context.read<UserProvider>().user;
    // print(watch.username);
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 196, 87, 87),
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        // leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Select Badget',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              // pinned: true,
              // floating: true,
              // snap: true,
              // leading: const Placeholder(),
              automaticallyImplyLeading: false,
              // leadingWidth: 0,
              // backgroundColor: Theme.of(context).colorScheme.background,
              // title: Text(
              //   'Select Badget',
              //   style: Theme.of(context).textTheme.titleSmall,
              // ),
              // automaticallyImplyLeading: false,
              // bottom: PreferredSize(
              //   preferredSize: const Size(
              //     double.infinity,
              //     350,
              //     // MediaQuery.of(context).size.height / 3.5,
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.only(bottom: size36),
              //     child: Column(
              //       // mainAxisSize: MainAxisSize.min,
              //       children: [
              //         Text(
              //           visic.name,
              //           textAlign: TextAlign.center,
              //           style: Theme.of(context).textTheme.titleLarge,
              //         ),
              //         Text(
              //           visic.type,
              //           textAlign: TextAlign.center,
              //           style: Theme.of(context).textTheme.titleSmall,
              //         ),
              //         Stack(
              //           alignment: Alignment.center,
              //           children: [
              //             VisicTileModal(
              //               visic: visic,
              //               child: Image.asset(
              //                 'assets/visic/visic.webp',
              //                 width: MediaQuery.of(context).size.width / 2,
              //                 // height: 150,
              //                 // width: 150,
              //                 fit: BoxFit.contain,
              //               ),
              //             ),
              //             // const Selected(),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              expandedHeight: 350,
              // expandedHeight: MediaQuery.of(context).size.height / 2,
              // collapsedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: size32,
                      left: size16,
                      right: size16,
                    ),
                    child: Text(
                      visic.name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: size16),
                    child: Text(
                      visic.type,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        VisicTileModal(
                          visic: visic,
                          child: Image.asset(
                            'assets/visic/visic.webp',
                            width: MediaQuery.of(context).size.width / 1.7,
                            fit: BoxFit.contain,
                          ),
                        ),
                        // const Selected(),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            DecoratedSliver(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(size16),
                  topRight: Radius.circular(size16),
                ),
              ),
              sliver: SliverList.list(
                children: [
                  const Icon(Icons.remove, size: 54, color: Colors.grey),
                  Text(
                    'Visics Collection',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Container(
                    width: double.infinity,
                    height: size80,
                    padding: const EdgeInsets.only(
                      top: size24,
                      bottom: size24,
                    ),
                    child: ListView.separated(
                      padding: const EdgeInsets.only(left: size16),
                      itemCount: filter.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: size12);
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(size8),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: size24,
                            vertical: size8,
                          ),
                          child: Text(
                            filter[index],
                            style: const TextStyle(
                              color: VisimoColors.grey800,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            DecoratedSliver(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
              ),
              sliver: SliverPadding(
                padding: const EdgeInsets.only(
                  left: size16,
                  right: size16,
                  bottom: size128,
                ),
                sliver: SliverGrid.builder(
                  // padding: const EdgeInsets.symmetric(horizontal: size16),
                  itemCount: visics.length,
                  // shrinkWrap: true,
                  // scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    // mainAxisSpacing: 12,
                    childAspectRatio: .7,
                  ),
                  itemBuilder: (context, index) =>
                      VisicTile(visic: visics[index]),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        decoration: const BoxDecoration(color: Colors.white),
        padding: const EdgeInsets.only(
            top: size24, right: size16, bottom: size24, left: size16),
        child: VisimoMainButton(
          buttonName: 'Continue',
          handler: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const SelectIslandScreen(),
            ));
          },
          color: Theme.of(context).buttonTheme.colorScheme!.primary,
        ),
      ),
    );
  }
}
