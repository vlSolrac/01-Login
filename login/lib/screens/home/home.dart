import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/routers/routers.dart';

import 'package:login/theme/theme.dart';
import 'package:login/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
//Parametes.

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //global variables.
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: BackgroundHome(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to Jungle",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SvgPicture.asset(
                AssetsApp.chat,
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButtom(
                text: "Login",
                color: ThemeApp.primary,
                textColor: Colors.white,
                press: () => Navigator.pushNamed(
                  context,
                  RoutesApp.login,
                ),
              ),
              const SizedBox(height: 20),
              RoundedButtom(
                text: "Sign Up",
                color: ThemeApp.secondary,
                textColor: Colors.black,
                press: () => Navigator.pushNamed(
                  context,
                  RoutesApp.signUp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
