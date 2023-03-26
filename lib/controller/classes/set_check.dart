import 'package:flutter/material.dart';

class SetCheck extends ChangeNotifier {
  bool isCheck = false;

  setCheck(bool isCheckP) {
    isCheck = isCheckP;
notifyListeners();

  }

  bool get getCheck => isCheck;
}
