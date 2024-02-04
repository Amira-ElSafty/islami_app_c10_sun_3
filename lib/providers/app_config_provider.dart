import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  // data
  String appLanguage = 'ar';
  ThemeMode appTheme = ThemeMode.dark;

  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }

  void changeTheme(ThemeMode newMode) {
    if (appTheme == newMode) {
      return;
    }
    appTheme = newMode;
    notifyListeners();
  }

  bool isDarkMode() {
    return appTheme == ThemeMode.dark;
  }
}
