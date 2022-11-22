import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/routers/routers.dart';
import 'package:login/theme/theme.dart';
import 'package:login/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
//Parametes.

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //global variables.
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SvgPicture.asset(
                AssetsApp.login,
                height: size.height * 0.35,
              ),
              const SizedBox(height: 20),
              RoundedInputField(
                hintText: "Your Email",
                colorIcon: ThemeApp.primary,
                icon: Icons.person,
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              RoundedPasswordInput(
                colorIcon: ThemeApp.primary,
                hintText: 'Password',
                icon: Icons.lock,
                obscureText: true,
                onChanged: (value) {},
                onPressed: null,
              ),
              const SizedBox(height: 20),
              RoundedButtom(
                text: "LOGIN",
                color: ThemeApp.primary,
                press: () {},
                textColor: Colors.white,
              ),
              SizedBox(height: size.height * 0.05),
              AlrreadyHaveAnAccount(
                login: true,
                onTap: () =>
                    Navigator.popAndPushNamed(context, RoutesApp.signUp),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
