import 'package:bloc/bloc.dart';

class CubitEye extends Cubit<bool> {
  CubitEye(initialValue) : super(initialValue);
  changeValue() => emit(!state);
}

class CubitEyeRet extends Cubit<bool> {
  CubitEyeRet(initialValue) : super(initialValue);
  changeValue() => emit(!state);
}
