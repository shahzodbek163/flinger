import 'dart:convert';
import 'dart:developer';

import 'package:flinger/blocs/bloc_set_code.dart';
import 'package:flinger/blocs/image_picker_bloC.dart';
import 'package:flinger/classes/set_check.dart';

import 'package:flinger/screens/register_screen.dart';
import 'package:flinger/screens/welcome_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) async {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => SetCheck()),
      Provider<BlocSetCode>(create: (context) => BlocSetCode()),
      Provider<ImagePickerBloC>(create: (context) => ImagePickerBloC()),
    ],
    child: const MaterialApp(
      home: WellcomeScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
 
}
