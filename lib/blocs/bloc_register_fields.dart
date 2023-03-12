import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class RegisterEvent {}

class RegisterButtonPressed extends RegisterEvent {
  final String firstname;

  final String lastname;
  final String phonenumber;
  final String password;
  final String retypePassword;
  final String bio;

  String get getFirstname => firstname;
  String get getLastname => lastname;
  String get getPhoneNumber => phonenumber;
  String get getPassword => password;
  String get getRetypePassword => retypePassword;
  String get getBio => bio;

  RegisterButtonPressed(
      {required this.firstname,
      required this.lastname,
      required this.phonenumber,
      required this.password,
      required this.retypePassword,
      required this.bio});
}

class FirstnameTextChanged extends RegisterEvent {}

class PhoneNumberTextChnaged extends RegisterEvent {}

class PasswordTextChanged extends RegisterEvent {}

class RegisterBloc extends Bloc<RegisterEvent, List<bool>> {
  RegisterBloc(List<bool> initialValue) : super(initialValue) {
    on<RegisterButtonPressed>((event, emit) {
      if (event.getFirstname.isEmpty) {
        emit();
      } else {
        log("is not empty");
      }
      if (event.getPhoneNumber.isEmpty) {
        state[1] = false;
        emit(state);
      } else {
        state[1] = true;
        emit(state);
      }
      if (event.getPassword.isEmpty) {
        
        emit(state[2] = false);
      } else {
        state[2] = true;
        emit(state);
      }
      if (event.getRetypePassword.isEmpty) {
        state[3] = false;
        emit(state);
      } else {
        state[3] = true;
        emit(state);
      }
    });
    on<FirstnameTextChanged>((event, emit) {});
    on<PhoneNumberTextChnaged>((event, emit) {});
    on<PasswordTextChanged>((event, emit) {});
  }
}
