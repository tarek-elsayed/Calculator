import 'package:flutter/material.dart';
import 'package:frist_one/Calculator.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: Calculator(title: 'Calculation'),
  ));
}
