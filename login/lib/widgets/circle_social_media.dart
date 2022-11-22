import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleSocialMedia extends StatelessWidget {
  final String assetImage;
  final Color colorCircle;
  final Function()? onTap;
  const CircleSocialMedia({
    Key? key,
    required this.assetImage,
    required this.colorCircle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: colorCircle,
          ),
          // borderRadius: BorderRadius.circular(20),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          assetImage,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
