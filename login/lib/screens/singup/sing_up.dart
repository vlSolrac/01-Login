import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/helpers/constances/assets_app.dart';
import 'package:login/routers/routers.dart';
import 'package:login/theme/theme.dart';
import 'package:login/widgets/widgets.dart';

class SignUpScreen extends StatelessWidget {
//Parametes.

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //global variables.
    final size = MediaQuery.of(context).size;
    return SignUpBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            SvgPicture.asset(
              AssetsApp.signup,
              width: size.width * 0.55,
            ),
            SizedBox(height: size.height * 0.04),
            RoundedInputField(
              hintText: "Your Email",
              icon: Icons.person,
              colorIcon: ThemeApp.primary,
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03),
            RoundedPasswordInput(
              hintText: "Password",
              icon: Icons.lock,
              colorIcon: ThemeApp.primary,
              obscureText: true,
              onChanged: (value) {},
              onPressed: () {},
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButtom(
              text: "SIGNUP",
              color: ThemeApp.primary,
              press: () {},
              textColor: Colors.white,
            ),
            SizedBox(height: size.height * 0.03),
            AlrreadyHaveAnAccount(
              login: false,
              onTap: () => Navigator.popAndPushNamed(context, RoutesApp.login),
            ),
            SizedBox(height: size.height * 0.01),
            SizedBox(
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: Divider(
                      color: Color(0XFFD9D9D9),
                      height: 1.5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "OR",
                      style: TextStyle(
                        color: ThemeApp.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0XFFD9D9D9),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CircleSocialMedia(
                  assetImage: AssetsApp.facebook,
                  colorCircle: ThemeApp.primary,
                  colorIcon: Colors.white,
                ),
                CircleSocialMedia(
                  assetImage: AssetsApp.google,
                  colorCircle: ThemeApp.primary,
                  colorIcon: Colors.white,
                ),
                CircleSocialMedia(
                  assetImage: AssetsApp.twitter,
                  colorCircle: ThemeApp.primary,
                  colorIcon: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


