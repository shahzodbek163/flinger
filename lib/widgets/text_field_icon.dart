import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldIcon extends StatelessWidget {
  final bool isEmail;
  final bool isPassword;
  final bool isSecond;
  final Widget first;
  final Widget second;
  const TextFieldIcon({
    super.key,
    required this.isEmail,
    required this.isPassword,
    this.isSecond = false,
    required this.first,
    required this.second,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          cursorColor: const Color(0xFFff0008),
          style: GoogleFonts.shareTechMono(fontSize: 16),
          keyboardType: isEmail ? TextInputType.emailAddress : null,
          obscureText: isPassword,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.only(top: 17, left: 30),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFff0008), width: 2)),
          ),
        ),
        Positioned(left: 1, bottom: 5, child: first),
        Visibility(
            visible: isSecond ? true : false,
            child: Positioned(right: 1, bottom: 5, child: second))
      ],
    );
  }
}
