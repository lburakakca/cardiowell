import 'dart:async';
import 'package:flutter/material.dart';

const String backgroundColor = "47474A";
const String textColor = "FFFFFF";

class AppColors extends Color {
  static int _change(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  AppColors(final String colorCode) : super(_change(colorCode));
}