import 'package:flutter/material.dart';

class RoundedButtom extends StatelessWidget {
  final String text;
  final Function()? press;
  final Color textColor;
  final Color color;
  const RoundedButtom({
    Key? key,
    required this.text,
    required this.color,
    required this.press,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
