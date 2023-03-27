import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldIcon extends StatelessWidget {
  final bool isEmail;
  final bool isPassword;
  final Widget first;
  final Widget second;
  final Widget third;
  final double topPadding;
  final TextEditingController textEditingController;
  final void Function(String)? onChanged;
  const TextFieldIcon(
      {super.key,
      required this.isEmail,
      required this.isPassword,
      required this.first,
      this.second = const SizedBox(),
      this.third = const SizedBox(),
      this.topPadding = 17,
      required this.textEditingController,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: Stack(
        children: [
          TextField(
            controller: textEditingController,
            onChanged: onChanged,
            obscureText: isPassword,
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
          Positioned(
            right: 2,
            bottom: 4,
            child: Row(
              children: [
                second,
                SizedBox(
                  width: isPassword ? 8 : 0,
                ),
                third
              ],
            ),
          ),
        ],
      ),
    );
  }
}
