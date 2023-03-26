import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flinger/blocs/image_picker_bloC.dart';
import 'package:flinger/controller/bloc_observ/custom_bloc_observe.dart';
import 'package:flinger/controller/blocs/blocA.dart';
import 'package:flinger/controller/blocs/bloc_register_fields.dart';
import 'package:flinger/controller/blocs/bloc_set_code.dart';
import 'package:flinger/controller/classes/set_check.dart';
import 'package:flinger/view/screens/register_screen.dart';
import 'package:flinger/simple.dart';
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
      Provider<SimpleButtonBloC>(
        create: (context) => SimpleButtonBloC(),
      ),
      Provider<RegisterBloc>(
        create: (context) => RegisterBloc(RegisterFieldsInfo(
          firstname: false,
          lastname: false,
          phone: false,
          password: false,
          retypePassword: false,
          bio: false,
        )),
      ),
    ],
    child: MaterialApp(
      home: RegisterScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
