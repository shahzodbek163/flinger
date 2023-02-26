import 'dart:developer';

import 'package:flinger/classes/set_check.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TextFieldIcon extends StatelessWidget {
  final bool isEmail;
  final bool isPassword;
  final bool isSecond;
  final Widget first;
  final Widget second;
  final double topPadding;
  const TextFieldIcon({
    super.key,
    required this.isEmail,
    required this.isPassword,
    this.isSecond = false,
    required this.first,
    required this.second,
    this.topPadding = 17,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: Stack(
        children: [
          TextField(
            cursorColor: const Color(0xFFff0008),
            style: GoogleFonts.shareTechMono(fontSize: 16),
            keyboardType: isEmail ? TextInputType.emailAddress : null,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                  top: topPadding,
                  left: 36,
                  right: 36,
                  bottom: topPadding == 17 ? 0 : 10),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFff0008), width: 2)),
            ),
          ),
          Positioned(left: 1, bottom: 5, child: first),
          Visibility(
              visible: isSecond ? true : false,
              child: Positioned(right: 1, bottom: 5, child: second))
        ],
      ),
    );
  }
}
