import 'package:flinger/resource/constants.dart';
import 'package:flinger/widgets/red_button.dart';
import 'package:flinger/widgets/start_location_text_field.dart';
import 'package:flinger/widgets/text_field_icon.dart';
import 'package:flinger/widgets/text_field_red.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Let's login",
                style: GoogleFonts.ubuntu(
                    fontSize: 30, fontWeight: FontWeight.bold),
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
            const SizedBox(
              height: 40,
            ),
            Text(
              "Phone number",
              style: GoogleFonts.ubuntu(
                  color: Colors.black38,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const TextFieldRed(suffix: StartLocationTextField()),
            Text(
              "Password",
              style: GoogleFonts.ubuntu(
                  color: Colors.black38,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const TextFieldIcon(
                isEmail: false,
                isPassword: true,
                first: Icon(Icons.lock),
                second: Icon(Icons.remove_red_eye)),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Forgot password?",
                style: GoogleFonts.ubuntu(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 360,
            ),
            Center(
              child: RedButton(
                  color: Constants.redButtonColor,
                  shadowColor: Constants.redButtonShadow,
                  textColor: Constants.redButtonTextColor,
                  buttonText: "Login",
                  onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
