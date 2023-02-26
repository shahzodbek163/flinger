import 'dart:async';

import 'package:flutter/material.dart';

class BlocSetCode {
  final dataController = StreamController<String>.broadcast();
  StreamSink<String> get dataSink => dataController.sink;
  Stream<String> get dataStream => dataController.stream;

  final dataPhotoController = StreamController<Image>.broadcast();
  StreamSink<Image> get dataPhotoSink => dataPhotoController.sink;
  Stream<Image> get dataPhotoStream => dataPhotoController.stream;
}
