/* import 'package:flinger/resource/constants.dart';
import 'package:flinger/screens/login_screen.dart';
import 'package:flinger/screens/register_screen.dart';
import 'package:flinger/widgets/red_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffff0008),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: top(),
            ),
            Flexible(flex: 5, child: middle()),
            Flexible(flex: 2, child: bottom(context)),
          ],
        ),
      ),
    );
  }

  Widget top() {
    return Column(
      children: [
        Center(
          child: Image.asset(
            "assets/logo.png",
            height: 70,
            width: 70,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "flinger",
          style: GoogleFonts.ubuntu(fontSize: 36, color: Colors.white),
        ),
      ],
    );
  }

  Widget middle() {
    return Column(
      children: [
        Text(
          "Welcome",
          style: GoogleFonts.amita(fontSize: 36, color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "Welcome to our named 'flinger' posting application if you want to sent question please contact our support service",
            style: GoogleFonts.ubuntu(fontSize: 14, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget bottom(context) {
    return Column(
      children: [
        RedButton(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
          color: Constants.whiteButtonColor,
          shadowColor: Constants.whiteButtonShadow,
          textColor: Constants.whiteButtonTextColor,
          buttonText: "LOGIN",
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterScreen()));
          },
          child: Text(
            "GET REGISTERED",
            style: GoogleFonts.montserrat(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
 */