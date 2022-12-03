import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static bool _theme = false;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }
  
  static set theme(bool value) {
    _theme = value;
    _prefs.setBool("dark_mode", value);
  }

  static bool get theme{
    return _prefs.getBool("dark_mode") ?? _theme;
  }
}
