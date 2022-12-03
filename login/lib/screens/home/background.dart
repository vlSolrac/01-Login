import 'package:flutter/material.dart';
import 'package:login/helpers/constances/assets_app.dart';
import 'package:login/theme/theme.dart';

class BackgroundHome extends StatelessWidget {
  final Widget child;

  const BackgroundHome({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
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
            left: 0,
            child: Image.asset(
              AssetsApp.mainBottom,
              width: size.width * 0.20,
            ),
          ),
          child
        ],
      ),
    );
  }
}
