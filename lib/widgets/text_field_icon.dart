import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldIcon extends StatelessWidget {
  final bool isEmail;
  final bool isPassword;
  final Widget suffix;
  const TextFieldIcon({
    super.key,
    required this.isEmail,
    required this.suffix,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xFFff0008),
      style: GoogleFonts.shareTechMono(fontSize: 16),
      keyboardType: isEmail ? TextInputType.emailAddress : null,
      decoration: InputDecoration(
        suffix: suffix,
        prefix: isPassword
            ? const Icon(Icons.remove_red_eye)
            : const Visibility(child: Icon(Icons.check)),
        contentPadding: const EdgeInsets.only(top: 17, left: 110),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFff0008), width: 2)),
      ),
    );
  }
}
