import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CancelIcon extends StatelessWidget {
  const CancelIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/icons8-cancel-120.png", height: 15, width: 15,);
  }
}