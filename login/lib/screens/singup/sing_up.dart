import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                ),
                CircleSocialMedia(
                  assetImage: AssetsApp.google,
                  colorCircle: ThemeApp.primary,
                ),
                CircleSocialMedia(
                  assetImage: AssetsApp.twitter,
                  colorCircle: ThemeApp.primary,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

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

class SignUpBackground extends StatelessWidget {
  final Widget child;
  const SignUpBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              AssetsApp.signUpTop,
              width: size.width * 0.40,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              AssetsApp.mainBottom,
              width: size.width * 0.25,
            ),
          ),
          child
        ],
      ),
    ));
  }
}
