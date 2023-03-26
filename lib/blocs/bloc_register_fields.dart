import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class RegisterEvent extends Equatable {}

class RegisterButtonPressed extends RegisterEvent with EquatableMixin{
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

  @override
  List<Object?> get props =>
      [firstname, lastname, phonenumber, password, retypePassword, bio];
}

// ignore: must_be_immutable
class RegisterData extends Equatable {
  List<bool> list;
  RegisterData({
    required this.list,
  });

  @override
  List<Object?> get props => [list];
}

class FirstnameTextChanged extends RegisterEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class PhoneNumberTextChnaged extends RegisterEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class PasswordTextChanged extends RegisterEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class RegisterBloc extends Bloc<RegisterEvent, List<bool>> {
  RegisterBloc(List<bool> initialValue) : super(initialValue) {
    on<RegisterButtonPressed>((event, emit) {
      print(event);
      if (event.getFirstname.isEmpty) {
       
        emit([false, false, false, false]);
      } else {
        emit([true, false, false, false]);
      }
      if (event.getPhoneNumber.isEmpty) {
        
        emit([false, false, false, false]);
      } else {
        emit([false, true, false, false]);
      }
      if (event.getPassword.isEmpty) {
      
       emit([false, false, false, false]);
      } else {
        emit([false, false, true, false]);
      }
      if (event.getRetypePassword.isEmpty) {
       
       emit([false, false, false, false]);
      } else {
    
   emit([false, false, false, true]);
      }
    });
    on<FirstnameTextChanged>((event, emit) {});
    on<PhoneNumberTextChnaged>((event, emit) {});
    on<PasswordTextChanged>((event, emit) {});
  }
  @override
  void onChange(Change<List<bool>> change) {
    log(change.toString() + "d");
    super.onChange(change);
  }
}
