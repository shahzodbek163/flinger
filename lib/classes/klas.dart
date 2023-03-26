import 'package:equatable/equatable.dart';

class Klas extends Equatable {
  bool boolean = false;

  bool get getBool => boolean;

  setBool(bool boolP) {
    boolean = boolP;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [boolean];
}
