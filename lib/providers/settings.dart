
import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier{
   bool _darkMode = false;

    bool get darkMode {
    return _darkMode;
  }


   void changeMode(){
     _darkMode = !_darkMode;
     notifyListeners();
   }
}