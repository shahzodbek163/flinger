import 'dart:io';

import 'package:flinger/blocs/image_picker_bloC.dart';
import 'package:flinger/resource/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({super.key});

  final ImagePicker imagePicker = ImagePicker();
  XFile? xFile;

  @override
  Widget build(BuildContext context) {
    final imagePickerBloC = Provider.of<ImagePickerBloC>(context);
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: StreamBuilder<XFile>(
          stream: imagePickerBloC.xFileStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GestureDetector(
                onTap: () => imagePickerBloC.imageActionStreamSink
                    .add(ImageActions.pick),
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber,
                      image: DecorationImage(
                          image: FileImage(File(snapshot.data!.path)),
                          fit: BoxFit.cover)),
                ),
              );
            } else {
              return GestureDetector(
                onTap: () => imagePickerBloC.imageActionStreamSink
                    .add(ImageActions.pick),
                child: Container(
                  alignment: Alignment.center,
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber,
                  ),
                  child: const Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.black,
                  ),
                ),
              );
            }
          }),
    );
  }
}
