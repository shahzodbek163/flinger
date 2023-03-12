import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCancelPassword extends Cubit<bool>{
  CubitCancelPassword(initialValue):super(initialValue);
  changeValue()=> emit(!state);
}