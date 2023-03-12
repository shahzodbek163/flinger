import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCancelNumber extends Cubit<bool>{
  CubitCancelNumber(initialValue):super(initialValue);
  changeValue()=> emit(!state);
}