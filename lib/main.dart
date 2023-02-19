import 'package:flinger/screens/first_screen.dart';
import 'package:flinger/screens/login_screen.dart';
import 'package:flinger/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: WellcomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
