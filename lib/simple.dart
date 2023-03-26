import 'package:flinger/blocs/bloc.dart';
import 'package:flinger/classes/klas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Simple extends StatelessWidget {
   Simple({super.key});

  final simpleBloc = SimpleBloc(Klas());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
          child: Column(
            children: [
              BlocBuilder<SimpleBloc, Klas>(
                bloc: simpleBloc,
                builder: (context, state) {
                  return Container(
                    height: 200,
                    width: 200,
                    color: state.getBool == false ? Colors.black : Colors.red,
              
                  );
                }
              ),
              GestureDetector(
                onTap: () {
                  simpleBloc.add(ButtonPressed());
                },
                child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                   
                    ),
              ),
            ],
          )),
    ));
  }
}
