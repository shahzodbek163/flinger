import 'package:flutter/material.dart';

class Simple extends StatelessWidget {
  const Simple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SafeArea(
        child: Column(
          children: [
            container(100, 200, Colors.green, 4),
            container(50, 200, Colors.red, 5),
            container(300, 200, Colors.yellow, 10),
            container(300, 200, Colors.deepPurple, 5),
            container(300, 200, Colors.teal, 1),
          ],
        ),
      ),
    ));
  }

  Widget container(double height, double width, Color color, int flex) {
    return Flexible(
      flex: flex,
      child: Container(
        color: color,
      ),
    );
  }
}
