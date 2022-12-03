import 'package:flutter/material.dart';

class ThemeApp {
  static const primary = Color(0xFF6F35A5);
  static const secondary = Color(0xFFF1E6FF);

  static ThemeData themeLigth = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(color: primary)
  );

  static ThemeData themeDark = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
      inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
        color: Colors.black54,
      )));
}

