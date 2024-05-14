

import 'package:shared_preferences/shared_preferences.dart';

class ThemeApp{
  static late SharedPreferences prefs;
  ThemeApp() {
  }

  void setTheme(bool dark){
    prefs.setBool("dark", dark);
  }
  static Future<bool> getTheme() async{
    prefs = await SharedPreferences.getInstance();

    return prefs.getBool("dark") ?? false;
  }
}