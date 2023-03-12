import 'package:flinger/resource/constants.dart';
import 'package:flinger/widgets/red_button.dart';
import 'package:flinger/widgets/start_location_text_field.dart';
import 'package:flinger/widgets/text_field_red.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Verify number",
            style: GoogleFonts.montserrat(
                fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Text(
            "Please enter your phone number",
            style: GoogleFonts.montserrat(),
          ),
          const SizedBox(
            height: 10,
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFieldRed(suffix: const StartLocationTextField(), textEditingController: TextEditingController(),),
          ),
          const SizedBox(
            height: 30,
          ),
          RedButton(
            onTap: () {},
            color: Constants.redButtonColor,
            shadowColor: Constants.redButtonShadow,
            textColor: Constants.redButtonTextColor,
            buttonText: "SEND",
          ),
        ],
      )),
    );
  }
}
