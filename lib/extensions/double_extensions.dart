import 'package:flutter/material.dart';

extension DoubleExtensions on double {
  Color setColorDependsOnValue() {
    if (this < 10)
      return Colors.blue;
    else if (this < 20)
      return Colors.black;
    else
      return Colors.red;
  }
}