import 'dart:developer';
import 'package:flinger/controller/blocs/bloc_register_fields.dart';
import 'package:flinger/controller/cubits/cubit_cancel_firstname.dart';
import 'package:flinger/controller/cubits/cubit_cancel_number.dart';
import 'package:flinger/controller/cubits/cubit_cancel_password.dart';
import 'package:flinger/controller/cubits/cubit_change_check.dart';
import 'package:flinger/model/constants.dart';
import 'package:flinger/view/widgets/cancel_icon.dart';
import 'package:flinger/view/widgets/profile_widget.dart';
import 'package:flinger/view/widgets/red_button.dart';
import 'package:flinger/view/widgets/start_location_text_field.dart';
import 'package:flinger/view/widgets/text_field_icon.dart';
import 'package:flinger/view/widgets/text_field_red.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final cubitChangeCheck = CubitChangeCheck(false);

  final cubitCancelFirstname = CubitCancelFirstname(false);
  final cubitCancelNumber = CubitCancelNumber(false);
  final cubitCancelPassword = CubitCancelPassword(false);

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final numberController = TextEditingController();
  final passwordController = TextEditingController();
  final retypePasswordController = TextEditingController();
  final bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final providerBlocRegister = Provider.of<RegisterBloc>(context);
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
                child: Container(
                    color: Colors.transparent,
                    child: second(providerBlocRegister))),
            Flexible(
                flex: 12,
                child: Container(
                    color: Colors.transparent,
                    child: third(providerBlocRegister))),
            Flexible(
                flex: 4,
                child: Container(
                    color: Colors.transparent,
                    child: fourth(providerBlocRegister))),
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

  Widget second(providerBlocRegister) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(flex: 1, child: ProfileWidget()),
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
                  second: BlocBuilder<RegisterBloc, RegisterData>(
                    bloc: providerBlocRegister,
                    builder: (context, state) {
                      state as RegisterFieldsInfo;
                      log("salom");
                      return state.firstname
                          ? const CancelIcon()
                          : const SizedBox();
                    },
                  ),
                  textEditingController: firstnameController,
                ),
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
                    textEditingController: lastnameController,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget third(providerBlocRegister) {
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
        TextFieldRed(
          suffix: const StartLocationTextField(),
          second: BlocBuilder<RegisterBloc, RegisterData>(
            bloc: providerBlocRegister,
            builder: (context, state) {
              state as RegisterFieldsInfo;

              return state.phone ? const CancelIcon() : const SizedBox();
            },
          ),
          textEditingController: numberController,
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
          third: Image.asset(
            "assets/eye.png",
            height: 20,
            width: 20,
          ),
          second: BlocBuilder<RegisterBloc, RegisterData>(
            bloc: providerBlocRegister,
            builder: (context, state) {
              state as RegisterFieldsInfo;

              return state.password ? const CancelIcon() : const SizedBox();
            },
          ),
          textEditingController: passwordController,
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
          third: Image.asset(
            "assets/eye.png",
            height: 20,
            width: 20,
          ),
          second: BlocBuilder<RegisterBloc, RegisterData>(
            bloc: providerBlocRegister,
            builder: (context, state) {
              state as RegisterFieldsInfo;

              return state.retypePassword
                  ? const CancelIcon()
                  : const SizedBox();
            },
          ),
          textEditingController: retypePasswordController,
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
          textEditingController: bioController,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            children: [
              Expanded(
                child: BlocBuilder<CubitChangeCheck, bool>(
                  bloc: cubitChangeCheck,
                  builder: (context, state) {
                    return Checkbox(
                      activeColor: Constants.redButtonColor,
                      value: state,
                      onChanged: (value) {
                        cubitChangeCheck.changeValue();
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
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

  Widget fourth(RegisterBloc providerRegisterBloc) {
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
                onTap: () {
                  providerRegisterBloc.add(RegisterButtonPressed(
                      firstnameController.text,
                      lastnameController.text,
                      numberController.text,
                      passwordController.text,
                      retypePasswordController.text,
                      bioController.text));
                },
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
