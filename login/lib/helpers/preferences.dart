import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static bool _theme = false;

  bool get theme {
    return _theme;
  }

  set theme(bool value) {
    _theme = value;
  }

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }
}
