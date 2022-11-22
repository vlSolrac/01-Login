import 'package:flutter/material.dart';
import 'package:login/theme/theme.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;

  const LoginBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              AssetsApp.mainTop,
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              AssetsApp.loginBottom,
              width: size.width * 0.45,
            ),
          ),
          child
        ],
      ),
    );
  }
}
