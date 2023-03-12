import 'package:flinger/resource/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({super.key});

  final ImagePicker imagePicker = ImagePicker();
  XFile? xFile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          GestureDetector(
            onTap: () async {
              xFile = await imagePicker.pickImage(source: ImageSource.camera);
            },
            child: Container(
              height: 90,
              width: 90,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amber),
            ),
          ),
          Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.redButtonColor,
              ),
              child: const Icon(
                Icons.edit,
                color: Colors.white,
                size: 20,
              )),
        ],
      ),
    );
  }
}
