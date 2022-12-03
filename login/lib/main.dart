import 'package:flutter/material.dart';
import 'package:login/helpers/preferences.dart';
import 'package:login/providers/theme_provider.dart';
import 'package:login/routers/routers.dart';
import 'package:login/theme/theme.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: Provider.of<ThemeProvider>(context).theme ? ThemeApp.themeLigth : ThemeApp.themeDark,
      initialRoute: RoutesApp.home,
      routes: RoutesApp.routes,
    );
  }
}
