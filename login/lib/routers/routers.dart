import 'package:flutter/material.dart';

import 'package:login/screens/screens.dart';

class RoutesApp {
  static String home = "home";
  static String login = "login";
  static String signUp = "signUp";
  static String creditCard = "credit_card";

  static Map<String, Widget Function(BuildContext)> routes = {
    RoutesApp.home: (p0) => const HomeScreen(),
    RoutesApp.login: (p0) => const LoginScreen(),
    RoutesApp.signUp: (p0) => const SignUpScreen(),
  };
}
