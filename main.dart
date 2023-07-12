import "package:flutter/material.dart";
import 'package:dice_demo/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        [Color.fromARGB(99, 20, 155, 176), Color.fromARGB(98, 97, 240, 125)],
      ),
    ),
  ));
}
