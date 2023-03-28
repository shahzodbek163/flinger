import 'package:bloc/bloc.dart';
import 'package:flinger/controller/bloc_observ/custom_bloc_observe.dart';
import 'package:flinger/controller/blocs/bloc_set_code.dart';
import 'package:flinger/controller/blocs/image_picker_bloc.dart';
import 'package:flinger/controller/classes/set_check.dart';
import 'package:flinger/view/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:provider/provider.dart';

void main(List<String> args) async {
  Bloc.observer = CustomBlocObserve();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => SetCheck()),
      Provider<BlocSetCode>(create: (context) => BlocSetCode()),
      Provider<ImagePickerBloC>(create: (context) => ImagePickerBloC()),
    ],
    child: MaterialApp(
      home: RegisterScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
