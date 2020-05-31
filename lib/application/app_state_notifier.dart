import 'package:flutter/material.dart';

class AppStateNotifier extends ChangeNotifier {
  bool isDarkMode = false;

  void switchTheme() {
    this.isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
