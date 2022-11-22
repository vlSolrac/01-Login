import 'package:flutter/material.dart';
import 'package:login/theme/theme.dart';

class SignUpBackground extends StatelessWidget {
  final Widget child;
  const SignUpBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              AssetsApp.signUpTop,
              width: size.width * 0.40,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              AssetsApp.mainBottom,
              width: size.width * 0.25,
            ),
          ),
          child
        ],
      ),
    ));
  }
}
