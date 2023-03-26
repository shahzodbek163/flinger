import 'package:flinger/classes/klas.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ButtonEvent {}

class ButtonPressed extends ButtonEvent {}

class SimpleBloc extends Bloc<ButtonEvent, Klas> {
  SimpleBloc(super.initialState) {
    on<ButtonPressed>((event, emit) {
      Klas klas = Klas()..setBool(!state.boolean);

      emit(klas);
    });
  }
}
