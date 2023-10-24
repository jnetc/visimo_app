import 'package:flutter/material.dart';
// import 'package:flutter_visimo/widgets/buttons/visimo_anchor_button.dart';
// import 'package:flutter_visimo/screens/sign-up/signup_screen.dart';

class SwitchBetweenSignInSignUp extends StatelessWidget {
  const SwitchBetweenSignInSignUp({
    super.key,
    required this.text,
    required this.anchorName,
    required this.widget,
  });

  final String text;
  final String anchorName;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        // const SizedBox(width: 5),
        TextButton(
          onPressed: () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => widget,
            ),
            (route) => route.isFirst,
          ),
          child: Text(
            anchorName,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary)
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        // if (isSignIn)
        // if (!isSignIn)
        //   VisimoAnchorButton(
        //     onPressed: () => Navigator.pop(context),
        //     text: anchorName,
        //   ),
      ],
    );
  }
}
