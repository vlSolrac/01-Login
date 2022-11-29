import 'package:flutter/material.dart';

class ThemeApp {
  static const primary = Color(0xFF6F35A5);
  static const secondary = Color(0xFFF1E6FF);

  static ThemeData themeLigth = ThemeData.light().copyWith();

  static ThemeData themeDark = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
      inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
        color: Colors.black54,
      )));
}

class AssetsApp {
  static const chat = "assets/icons/chat.svg";
  static const facebook = "assets/icons/facebook.svg";
  static const google = "assets/icons/google-plus.svg";
  static const login = "assets/icons/login.svg";
  static const signup = "assets/icons/signup.svg";
  static const twitter = "assets/icons/twitter.svg";

  static const loginBottom = "assets/images/login_bottom.png";
  static const mainBottom = "assets/images/main_bottom.png";
  static const mainTop = "assets/images/main_top.png";
  static const signUpTop = "assets/images/signup_top.png";
}
