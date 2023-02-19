import 'package:flinger/resource/constants.dart';
import 'package:flinger/widgets/red_button.dart';
import 'package:flinger/widgets/start_location_text_field.dart';
import 'package:flinger/widgets/text_field_icon.dart';
import 'package:flinger/widgets/text_field_red.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Get registered",
                style: GoogleFonts.ubuntu(
                    fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Text(
                "Register and enjoy our social",
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
              "Firstname",
              style: GoogleFonts.ubuntu(
                  color: Colors.black38,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const TextFieldIcon(
                isEmail: false,
                isPassword: false,
                first: Icon(Icons.account_circle),
                second: Icon(Icons.check)),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Lastname",
                style: GoogleFonts.ubuntu(
                    color: Colors.black38,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            const TextFieldIcon(
                isEmail: false,
                isPassword: false,
                first: Icon(Icons.account_circle),
                second: Icon(Icons.check)),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Bio",
                style: GoogleFonts.ubuntu(
                    color: Colors.black38,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            const TextFieldIcon(
                isEmail: false,
                isPassword: false,
                first: Icon(Icons.info),
                second: Icon(Icons.check)),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Password",
                style: GoogleFonts.ubuntu(
                    color: Colors.black38,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            const TextFieldIcon(
              first: Icon(Icons.lock_person_rounded),
              isEmail: false,
              isPassword: true,
              isSecond: true,
              second: Icon(Icons.remove_red_eye),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.check_box,
                    color: Constants.redButtonColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Text(
                      """By creating an account you agree to our 
Terms and condition""",
                      style: GoogleFonts.montserrat(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 80,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RedButton(
                    color: Constants.redButtonColor,
                    shadowColor: Constants.redButtonShadow,
                    textColor: Constants.redButtonTextColor,
                    buttonText: "SIGN UP",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SIGN IN",
                    style: GoogleFonts.montserrat(
                        color: Constants.redButtonColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
