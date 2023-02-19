import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shadow/shadow.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffff0008),
      body: Center(
        child: DropShadow(
          spread: 2,
          blurRadius: 20,
          borderRadius: 20,
          opacity: 0.5,
          child: Image.asset(
            "assets/logo.png",
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
