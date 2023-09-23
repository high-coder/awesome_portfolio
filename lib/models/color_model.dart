import 'package:flutter/material.dart';

class ColorModel {
  Gradient gradient;
  Color color;

  String svgPath;

  ColorModel({
    required this.color,
    required this.gradient,
    required this.svgPath,
  });
}
