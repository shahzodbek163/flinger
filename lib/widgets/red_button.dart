import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class RedButton extends StatelessWidget {
  const RedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        height: 45,
        width: 230,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color(0xFFff0008),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 255, 88, 94),
                  spreadRadius: 1,
                  blurRadius: 30,
                  blurStyle: BlurStyle.normal,

                  offset: Offset(0, 9)
                  
                  )
            ],
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          "SEND",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
