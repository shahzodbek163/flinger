import 'package:flinger/resource/constants.dart';
import 'package:flinger/widgets/red_button.dart';
import 'package:flinger/widgets/start_location_text_field.dart';
import 'package:flinger/widgets/text_field_icon.dart';
import 'package:flinger/widgets/text_field_red.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: topText(),
            ),
            Flexible(
              flex: 5,
              child: textField(),
            ),
            Flexible(
              flex: 2,
              child: Center(
                child: RedButton(
                    color: Constants.redButtonColor,
                    shadowColor: Constants.redButtonShadow,
                    textColor: Constants.redButtonTextColor,
                    buttonText: "Login",
                    onTap: () {}),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget topText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Let's login",
            style:
                GoogleFonts.ubuntu(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            "Please enter valid credentials",
            style: GoogleFonts.ubuntu(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
       
      ],
    );
  }

  Widget textField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      const   SizedBox(
          height: 10,
        ),
        Text(
          "Phone number",
          
          style: GoogleFonts.ubuntu(
              color: Colors.black38, fontSize: 14, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
         TextFieldRed(suffix: const StartLocationTextField(),textEditingController: TextEditingController(),),
        Text(
          "Password",
          style: GoogleFonts.ubuntu(
              color: Colors.black38, fontSize: 14, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
         TextFieldIcon(
            isEmail: false,
            isPassword: true,
            topPadding: 0,
            first: const Icon(Icons.lock),
            second: const Icon(Icons.remove_red_eye),
            textEditingController: TextEditingController(),
            ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Text(
            "Forgot password?",
            style: GoogleFonts.ubuntu(
                color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
