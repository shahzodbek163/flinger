import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SimpleEvent {}

class SimpleButtonPressed extends SimpleEvent {}

class A {
  final String string;
  A(this.string);
}

class SimpleEdited extends SimpleEvent {}

class SimpleButtonBloC extends Bloc<A, A> {
  SimpleButtonBloC() : super(A("Xato")) {
    on<A>((event, emit) {
      emit(event);
    });
  }
}
