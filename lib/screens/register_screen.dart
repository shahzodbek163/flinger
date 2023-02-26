import 'dart:io';

import 'package:flinger/resource/constants.dart';
import 'package:flinger/widgets/profile_widget.dart';
import 'package:flinger/widgets/red_button.dart';
import 'package:flinger/widgets/start_location_text_field.dart';
import 'package:flinger/widgets/text_field_icon.dart';
import 'package:flinger/widgets/text_field_red.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
                flex: 2,
                child: Container(color: Colors.transparent, child: first())),
            Flexible(
                flex: 4,
                child: Container(color: Colors.transparent, child: second())),
            Flexible(
                flex: 12,
                child: Container(color: Colors.transparent, child: third())),
            Flexible(
                flex: 4,
                child: Container(color: Colors.transparent, child: fourth())),
          ],
        ),
      ),
    );
  }

  Widget first() {
    return Column(
      children: [
        Center(
          child: Text(
            "Get registered",
            style:
                GoogleFonts.ubuntu(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            "Register and enjoy our social media",
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

  Widget second() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Flexible(flex: 1, child: ProfileWidget()),
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Firstname",
                  style: GoogleFonts.ubuntu(
                      color: Colors.black38,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                TextFieldIcon(
                    isEmail: false,
                    isPassword: false,
                    topPadding: 0,
                    first: Image.asset(
                      "assets/firstname.png",
                      height: 20,
                      width: 20,
                    ),
                    second: const Icon(Icons.check)),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Lastname",
                    style: GoogleFonts.ubuntu(
                        color: Colors.black38,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextFieldIcon(
                      isEmail: false,
                      topPadding: 0,
                      isPassword: false,
                      first: Image.asset(
                        "assets/account_two.png",
                        height: 20,
                        width: 20,
                      ),
                      second: const Icon(Icons.check)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget third() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            "Phone number",
            style: GoogleFonts.ubuntu(
                color: Colors.black38,
                fontSize: 14,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        const TextFieldRed(
          suffix: StartLocationTextField(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            "Password",
            style: GoogleFonts.ubuntu(
                color: Colors.black38,
                fontSize: 14,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        TextFieldIcon(
          first: Image.asset(
            "assets/key.png",
            height: 20,
            width: 20,
          ),
          isEmail: false,
          topPadding: 0,
          isPassword: true,
          isSecond: true,
          second: Image.asset(
            "assets/eye.png",
            height: 20,
            width: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            "Retype password",
            style: GoogleFonts.ubuntu(
                color: Colors.black38,
                fontSize: 14,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        TextFieldIcon(
          first: Image.asset(
            "assets/key.png",
            height: 20,
            width: 20,
          ),
          isEmail: false,
          topPadding: 0,
          isPassword: true,
          isSecond: true,
          second: Image.asset(
            "assets/eye.png",
            height: 20,
            width: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            "Bio",
            style: GoogleFonts.ubuntu(
                color: Colors.black38,
                fontSize: 14,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        TextFieldIcon(
            isEmail: false,
            isPassword: false,
            topPadding: 0,
            first: Image.asset(
              "assets/bio.png",
              height: 20,
              width: 20,
            ),
            second: const Icon(Icons.check)),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Icon(
                Icons.check_box,
                color: Constants.redButtonColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  """By creating an account you agree to our 
Terms and condition""",
                  style: GoogleFonts.montserrat(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget fourth() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RedButton(
                color: Constants.redButtonColor,
                shadowColor: Constants.redButtonShadow,
                textColor: Constants.redButtonTextColor,
                buttonText: "REGISTER",
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
    );
  }
}
