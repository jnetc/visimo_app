import 'package:flutter/material.dart';
import 'package:flutter_visimo/widgets/buttons/visimo_main_button.dart';
import 'package:flutter_visimo/widgets/input-fields/login_inputs.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm(
      {super.key, required this.buttonName, this.isSignUp = false});

  final String buttonName;
  final bool isSignUp;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordRepeatController =
      TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordRepeatController.dispose();
    super.dispose();
  }

  void onSubmitted() {
    // print(_emailController.text);
    // print(_passwordController.text);
    // print(_passwordRepeatController.text);

    _emailController.clear();
    _passwordController.clear();
    _passwordRepeatController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final primaryBtnColor =
        Theme.of(context).buttonTheme.colorScheme?.background;

    return Form(
      key: _formKey,
      child: Column(
        children: [
          InputFieldWithIcons(
            controller: _emailController,
            hintText: 'Email',
            prefixIconSvg: 'assets/icons/email.svg',
          ),
          const SizedBox(height: 18),
          InputFieldWithIcons(
            controller: _passwordController,
            hintText: 'Password',
            prefixIconSvg: 'assets/icons/lock.svg',
            suffixIconSvg: true,
          ),
          if (widget.isSignUp) const SizedBox(height: 18),
          if (widget.isSignUp)
            InputFieldWithIcons(
              controller: _passwordRepeatController,
              hintText: 'Repeat Password',
              prefixIconSvg: 'assets/icons/lock.svg',
              suffixIconSvg: true,
            ),
          const SizedBox(height: 32),
          VisimoMainButton(
            buttonName: widget.buttonName,
            color: primaryBtnColor,
            handler: () {
              onSubmitted();
              // if (_formKey.currentState!.validate()) {
              // }
            },
          ),
        ],
      ),
    );
  }
}
