
import 'dart:ui';

import 'package:flutter/material.dart';

class Utility {
  static Color hexToColor(String? hexString) {
    if (hexString == null || hexString.isEmpty) {
      throw FormatException("Empty or null string provided");
    }
    hexString = hexString.toUpperCase().replaceAll("#", "");
    if (hexString.length != 6 && hexString.length != 8) {
      throw FormatException("Invalid hexadecimal string length: $hexString");
    }
    int value = int.parse(hexString, radix: 16);
    if (hexString.length == 6) {
      value = 0xFF000000 + value;
    }
    return Color(value);
  }
}
