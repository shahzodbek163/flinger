import 'package:flutter_bloc/flutter_bloc.dart';

abstract class RegisterEvent {}

abstract class RegisterData {}

class RegisterButtonPressed extends RegisterEvent {
  final String firstname;
  final String lastname;
  final String phone;
  final String password;
  final String retypePassword;
  final String bio;

  RegisterButtonPressed(
    this.firstname,
    this.lastname,
    this.phone,
    this.password,
    this.retypePassword,
    this.bio,
  );
}

class FirstnameTextChanged extends RegisterEvent {}

class PhoneNumberTextChanged extends RegisterEvent {}

class PasswordTextChanged extends RegisterEvent {}

class RegisterFieldsInfo extends RegisterData {
  final bool firstname;
  final bool lastname;
  final bool phone;
  final bool password;
  final bool retypePassword;
  final bool bio;
  RegisterFieldsInfo({
    required this.firstname,
    required this.lastname,
    required this.phone,
    required this.password,
    required this.retypePassword,
    required this.bio,
  });
}

class EmptyRegisterData extends RegisterData {}

class RegisterBloc extends Bloc<RegisterEvent, RegisterData> {
  RegisterBloc(super.initialState) {
    on<RegisterButtonPressed>((event, emit) {
      final regInfo = RegisterFieldsInfo(
        firstname: event.firstname.isEmpty,
        lastname: event.lastname.isEmpty,
        phone: event.phone.isEmpty,
        password: event.password.isEmpty,
        retypePassword: event.retypePassword.isEmpty,
        bio: event.bio.isEmpty,
      );
      emit(regInfo);
    });
  }
}
