import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TextFieldRed extends StatelessWidget {
  const TextFieldRed({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 50),
      child:  TextField(
        cursorColor: Color(0xFFff0008),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 20),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFff0008), width: 2)),
        ),
      ),
    );
  }
}
