import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flinger/bloc_observ/custom_bloc_observe.dart';
import 'package:flinger/blocs/bloc_set_code.dart';
import 'package:flinger/blocs/image_picker_bloC.dart';
import 'package:flinger/classes/set_check.dart';
import 'package:flinger/screens/register_screen.dart';
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
