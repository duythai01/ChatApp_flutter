// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_chat/validation.dart/validation_item.dart';

class LoginValidate with ChangeNotifier {
  ValidationItem _phoneNumber = new ValidationItem(value: null, error: null);
  ValidationItem _password = new ValidationItem(value: null, error: null);
  bool secureText = true;
  bool isLogin = false;

  //Getters
  ValidationItem get phoneNumber {
    return _phoneNumber;
  }

  ValidationItem get password {
    return _password;
  }

  // Setter

  void changePhoneNumber(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

    RegExp regExp = new RegExp(pattern);
    if (value.isEmpty) {
      _phoneNumber = ValidationItem(value: null, error: "Ko dc de trong");
    } else if (!regExp.hasMatch(value)) {
      _phoneNumber =
          ValidationItem(value: null, error: "so dien thoai khong hop le");
    } else {
      _phoneNumber = ValidationItem(value: value, error: null);
    }
    notifyListeners();
  }

  void changPassword(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

    RegExp regExp = new RegExp(pattern);
    if (value.isEmpty) {
      _password = ValidationItem(value: null, error: "Ko dc de trong");
    } else if (!regExp.hasMatch(value)) {
      _password = ValidationItem(value: null, error: "Mat khau ko hop le");
    } else {
      _password = ValidationItem(value: value, error: null);
    }
    notifyListeners();
  }

  void hidePassword() {
    secureText = !secureText;

    notifyListeners();
  }

  bool isValid() {
    if (_phoneNumber.value != null && _password.value != null) {
      return true;
    } else {
      return false;
    }
  }
}

//validation

// class validate extends ChangeNotifier {
//   String? phoneError = null;
//   String? passwordError = null;
//   void validateMobile(String value) {
//     String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//     RegExp regExp = new RegExp(pattern);
//     if (value.isEmpty) {
//       phoneError = "Ko dc de trong";
//     } else if (!regExp.hasMatch(value)) {
//       phoneError = "sdt ko hop le";
//     } else {
//       phoneError = null;
//     }
//     notifyListeners();
//   }

//   void validatePassword(String value) {
//     String pattern =
//         r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

//     RegExp regex = RegExp(pattern);
//     if (value.isEmpty) {
//       passwordError = "ko dc de trong";
//     } else if (!regex.hasMatch(value)) {
//       passwordError = " mk ko hop le";
//     } else {
//       passwordError = null;
//     }
//     notifyListeners();
//   }
// }