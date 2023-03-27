import 'package:bloc/bloc.dart';

class CubitTapRegister extends Cubit<bool> {
  CubitTapRegister() : super(false);
  changeValue() => emit(!state);
}
