import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class RedButton extends StatelessWidget {
  final Color color;
  final Color shadowColor;
  final Color textColor;
  final String buttonText;
  final VoidCallback onTap;
  const RedButton(
      {super.key,
      required this.color,
      required this.shadowColor,
      required this.textColor,
      required this.buttonText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 230,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color,
            boxShadow: [
              BoxShadow(
                  color: shadowColor,
                  spreadRadius: 1,
                  blurRadius: 30,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(0, 9))
            ],
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          buttonText,
          style: GoogleFonts.montserrat(
              color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
