import 'package:flutter/material.dart';
// THEME
import 'package:flutter_visimo/theme/colors.dart';
// COMPONENTS
// import 'package:flutter_visimo/widgets/buttons/visimo_back_button.dart';

class VisimoAppBar extends StatefulWidget implements PreferredSizeWidget {
  const VisimoAppBar({super.key, required this.text});

  final String text;

  @override
  Size get preferredSize => const Size.fromHeight(48); // 56

  @override
  State<VisimoAppBar> createState() => _VisimoAppBarState();
}

class _VisimoAppBarState extends State<VisimoAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.text,
        style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: VisimoColors.grey800,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      // leading: const VisimoBackButton(),
    );
  }
}
// class VisimoAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const VisimoAppBar({super.key, required this.text, this.child});

//   final String text;
//   final Widget? child;

//   @override
//   Size get preferredSize => const Size.fromHeight(56);

//   @override
//   Widget build(BuildContext context) {
//     final showBackButton = ValueNotifier<bool>(child != null);

//     return ValueListenableBuilder(
//       valueListenable: showBackButton,
//       builder: (context, value, child) => AppBar(
//         title: Text(
//           text,
//           style: const TextStyle(
//             fontSize: 32,
//             fontWeight: FontWeight.bold,
//             color: VisimoColors.grey800,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.transparent,
//         leading: child != null
//             ? BackButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => child),
//                   );
//                 },
//               )
//             : null,
//       ),
//     );
//   }
// }
