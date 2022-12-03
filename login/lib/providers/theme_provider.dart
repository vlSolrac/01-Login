import 'package:flutter/cupertino.dart';
import 'package:login/helpers/preferences.dart';

class ThemeProvider extends ChangeNotifier {

  bool theme = Preferences.theme;

   changeTheme(bool value) {
    theme = value;
    notifyListeners();
  }

}
