import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  bool _darkMode = false;

  bool get darkMode {
    return _darkMode;
  }

  void changeMode() {
    _darkMode = !_darkMode;
    notifyListeners();
  }
}
