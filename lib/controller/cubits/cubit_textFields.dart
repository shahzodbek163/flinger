import 'package:bloc/bloc.dart';

class CubitFirstname extends Cubit<bool> {
  CubitFirstname(initialValue) : super(initialValue);
  changeValue() => emit(!state);
}

class CubitPhone extends Cubit<bool> {
  CubitPhone(initialValue) : super(initialValue);
  changeValue() => emit(!state);
}

class CubitPassword extends Cubit<bool> {
  CubitPassword(initialValue) : super(initialValue);
  changeValue() => emit(!state);
}

class CubitRetPassword extends Cubit<bool> {
  CubitRetPassword(initialValue) : super(initialValue);
  changeValue() => emit(!state);
}
