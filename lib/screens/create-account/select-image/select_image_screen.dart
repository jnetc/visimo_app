import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_visimo/screens/create-account/select-image/widgets/cusmomize_tile.dart';
import 'package:flutter_visimo/screens/create-account/select-island/select_island_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class SelectImageScreen extends StatefulWidget {
  const SelectImageScreen({super.key});

  @override
  State<SelectImageScreen> createState() => _SelectImageScreenState();
}

class _SelectImageScreenState extends State<SelectImageScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 16, right: 16, bottom: 32, left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
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
                          onTap: () {},
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
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      // mainAxisExtent: 64,
                    ),
                    itemBuilder: (context, index) => const CustomizeTile(),
                    shrinkWrap: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            VisimoMainButton(
              buttonName: 'Continue',
              isDisabled: true,
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
