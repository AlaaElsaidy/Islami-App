import 'package:flutter/material.dart';

class LangProvider extends ChangeNotifier {
  String langCode = "en";
  ThemeMode themeMode = ThemeMode.dark;

  void changeLang(String languageCode) {
    langCode = languageCode;
    notifyListeners();
  }

  void changeTheme(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }

  String getBg() {
    if (themeMode == ThemeMode.light) {
      return "assets/images/bg3.png";
    } else {
      return "assets/images/dark_bg.png";
    }
  }
}
