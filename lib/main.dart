import 'package:flinger/blocs/bloc_set_code.dart';
import 'package:flinger/blocs/image_picker_bloC.dart';
import 'package:flinger/classes/set_check.dart';
import 'package:flinger/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
