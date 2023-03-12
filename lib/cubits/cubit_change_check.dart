import 'package:bloc/bloc.dart';

class CubitChangeCheck extends Cubit<bool> {
  CubitChangeCheck(initialValue) : super(initialValue);
  changeValue() => emit(!state);
}
