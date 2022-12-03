import 'package:flutter/material.dart';
import 'package:login/helpers/preferences.dart';
import 'package:login/providers/theme_provider.dart';
import 'package:login/routers/routers.dart';
import 'package:login/theme/theme.dart';
import 'package:login/widgets/animation_image.dart';
import 'package:login/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
//Parametes.

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //global variables.
    final provider = Provider.of<ThemeProvider>(context, listen: false);
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
                press: () {
                  Preferences.theme = !Preferences.theme;
                  
                  provider.changeTheme(!Preferences.theme);
                  setState(() {});
                },
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
