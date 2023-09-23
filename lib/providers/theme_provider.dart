import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  late BuildContext context;
  late Size size;
  late double heightRatio = size.height / 790;
  late double widthRatio = size.width / 1440;
}
