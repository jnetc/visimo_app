import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/screens/create-account/07-create-visic/widgets/customizable_tile.dart';
import 'package:flutter_visimo/screens/create-account/08-select-island/select_island_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class CreateVisicScreen extends StatefulWidget {
  const CreateVisicScreen({super.key});

  @override
  State<CreateVisicScreen> createState() => _CreateVisicScreenState();
}

class _CreateVisicScreenState extends State<CreateVisicScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final watch = context.watch<UserProvider>().user;
    // print(watch.username);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: bodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HeadlineLarge(text: 'Let’s start to\ncreate Visik'),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        elevation: 0,
                        useSafeArea: true,
                        showDragHandle: true,
                        // isScrollControlled: to the full height of the screen.
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return const SizedBox.square(
                            dimension: double.infinity,
                            child: Text('widow'),
                          );
                        },
                      );
                    },
                    child: SvgPicture.asset(
                      'assets/visic/visic-base.svg',
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                  )
                ],
              ),
            ),
            GridView.builder(
              itemCount: 8,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                // mainAxisExtent: 64,
              ),
              itemBuilder: (context, index) => const CustomizableTile(),
            ),
            const SizedBox(height: size32),
            VisimoMainButton(
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
          ],
        ),
      ),
    );
  }
}
