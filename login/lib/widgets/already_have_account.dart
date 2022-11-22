import 'package:flutter/material.dart';
import 'package:login/theme/theme.dart';

class AlrreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function()? onTap;
  const AlrreadyHaveAnAccount({
    Key? key,
    this.login = true,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't Have an Account ? " : "Already have an Account ? ",
          style: const TextStyle(color: ThemeApp.primary),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            login ? " Sign Up" : " Sign In",
            style: const TextStyle(
              color: ThemeApp.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
