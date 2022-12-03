import 'package:flutter/material.dart';
import 'package:login/helpers/preferences.dart';
import 'package:login/routers/routers.dart';
import 'package:login/theme/theme.dart';
import 'package:login/widgets/animation_image.dart';
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
              ImageAnimation(
                size: size,
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
              const SizedBox(height: 20),
              RoundedButtom(
                text: "Theme",
                color: ThemeApp.primary,
                press: () => Preferences.theme = !Preferences.theme,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
