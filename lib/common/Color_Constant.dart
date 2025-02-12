import 'package:flutter/material.dart';

class Color_Constant{
  static const primarycolor=Color(0xFFF6BC46);
  static const secondarycolor=Color(0xFF2992FB);
  static const backgroundcolor=Color(0xFFF9F9F9);

}

LinearGradient primarygradiend=LinearGradient(
    begin: Alignment(1.00, -0.03),
    end: Alignment(-1, 0.03),
    colors: [
      Color(0xFFF6BC46),
      Color(0xFFFED055),
      Color(0xFFFEE778),
      Color(0xFFF1BA50)
    ]);