import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

import 'package:flutter_visimo/assets/constants.dart';
import 'package:flutter_visimo/models/visic.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';

class VisicTileModal extends StatelessWidget {
  const VisicTileModal({
    super.key,
    required this.visic,
    required this.child,
  });

  final Visic visic;
  final Widget child;

  void closeModal(BuildContext context) {
    // if (context.mounted == true) {
    //   return;
    // }
    Navigator.of(context).pop();
    // Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (visic.type == 'locked') return;
        showModalBottomSheet(
          backgroundColor: Theme.of(context).colorScheme.surface,
          elevation: 0,
          useSafeArea: true,
          showDragHandle: true,
          // isScrollControlled: to the full height of the screen.
          isScrollControlled: true,

          context: context,
          builder: (context) {
            return SizedBox.square(
              dimension: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.only(
                        left: size16,
                        top: size16,
                        right: size16,
                      ),
                      shrinkWrap: true,
                      children: [
                        Text(
                          visic.name,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: size8),
                        Text(
                          visic.type,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: size32),
                        Image.asset(
                          visic.image,
                          width: 200,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: size32),
                        Text(
                          visic.description,
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: size16, right: size16, bottom: size32),
                    // child: TextButton(
                    //     onPressed: () => closeModal(context),
                    //     child: const Text('Select Me')),
                    child: VisimoMainButton(
                      buttonName: 'Select Me',
                      handler: () => closeModal(context),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: child,
    );
  }
}
