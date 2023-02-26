import 'package:flinger/screens/login_screen.dart';
import 'package:flinger/screens/register_screen.dart';
import 'package:flinger/screens/welcome_screen.dart';
import 'package:flinger/simple.dart';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: RegisterScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
