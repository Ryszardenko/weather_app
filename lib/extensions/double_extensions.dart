import 'package:flutter/material.dart';

extension DoubleExtensions on double {
  Color setColorDependsOnValue() {
    if (this < 10)
      return Colors.blueAccent[700];
    else if (this < 20)
      return Colors.white;
    else
      return Colors.red;
  }
}