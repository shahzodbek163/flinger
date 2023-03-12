import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCancelFirstname extends Cubit<bool>{
  CubitCancelFirstname(initialValue):super(initialValue);
  changeValue()=> emit(!state);
}