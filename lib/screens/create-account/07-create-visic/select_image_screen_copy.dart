import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_visimo/icons/icons.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_visimo/screens/create-account/08-select-island/select_island_screen.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/texts/title_large.dart';

class SelectImageScreen extends StatefulWidget {
  const SelectImageScreen({super.key});

  @override
  State<SelectImageScreen> createState() => _SelectImageScreenState();
}

class _SelectImageScreenState extends State<SelectImageScreen> {
  File? _image;

  final ImagePicker picker = ImagePicker();

  Future getImageFromGallery() async {
    final response = await picker.pickImage(source: ImageSource.gallery);
    if (response == null) return;
  }

  Future getImageFromCamera() async {
    final response = await picker.pickImage(source: ImageSource.camera);
    // final response = await picker.retrieveLostData();
    if (response == null) return;
    setState(() {
      _image = File(response.path);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double imageHeight;

    if (MediaQuery.of(context).size.width > 650) {
      imageHeight = 350;
    }

    imageHeight = MediaQuery.of(context).size.height / 3.5;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 16, right: 16, bottom: 32, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeadlineLarge(text: 'Set or upload\nprofile image'),
            const SizedBox(height: 48),
            SizedBox(
              height: imageHeight,
              child: Flex(
                direction: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.stretch,

                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: getImageFromCamera,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          ),
                          if (_image != null)
                            imagePickerIcon(height: 48, width: 48),
                        ],
                      ),
                      // child: Container(
                      //     // height: imageHeight,
                      //     width: 180,
                      //     decoration: BoxDecoration(
                      //       color: Colors.transparent,
                      //       borderRadius: BorderRadius.circular(12),

                      //       // border: BorderDirectional(end: BorderSide(strokeAlign: 12))
                      //       border: Border.all(
                      //         color: Colors.white,
                      //         width: 2,
                      //       ),
                      //     ),
                      //     child: Stack(
                      //       alignment: Alignment.center,
                      //       fit: StackFit.expand,
                      //       children: [
                      //         _image != null
                      //             ? ClipRRect(
                      //                 borderRadius: BorderRadius.circular(12),
                      //                 child: Image.file(
                      //                   _image!,
                      //                   fit: BoxFit.cover,
                      //                   height: double.infinity,
                      //                 ),
                      //               )
                      //             : imagePickerIcon,
                      //       ],
                      //     )),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // const SizedBox(height: 24),
            VisimoMainButton(buttonName: 'Get Image', handler: () {}),
            // VisimoMainButton(buttonName: 'Load Image', handler: () {}),
            const SizedBox(height: 24),
            Text(
              'You can choose an avatar in the form of Vizik or add your own, other people will see you this way in chats and other activities.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 48),
            const Spacer(),
            VisimoMainButton(
              buttonName: 'Continue',
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
