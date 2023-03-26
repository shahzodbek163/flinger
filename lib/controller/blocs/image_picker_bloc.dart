import 'dart:async';

import 'package:image_picker/image_picker.dart';

enum ImageActions { pick, replace, delete }

class ImagePickerBloC {
  final xFileStreamController = StreamController<XFile>.broadcast();
  Stream<XFile> get xFileStream => xFileStreamController.stream;
  StreamSink<XFile> get xFileStreamSink => xFileStreamController.sink;

  final imageActionStreamController =
      StreamController<ImageActions>.broadcast();
  Stream<ImageActions> get imageActionStream =>
      imageActionStreamController.stream;
  StreamSink<ImageActions> get imageActionStreamSink =>
      imageActionStreamController.sink;

  ImagePickerBloC() {
    imageActionStream.listen((event) async {
      if (event == ImageActions.pick) {
        final image =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        xFileStreamSink.add(image!);
      }
    });
  }
}
