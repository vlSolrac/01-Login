import 'package:flutter/material.dart';
import 'package:login/helpers/preferences.dart';
import 'package:login/routers/routers.dart';
import 'package:login/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeApp.themeLigth,
      initialRoute: RoutesApp.home,
      routes: RoutesApp.routes,
    );
  }
}