import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xFFFBFBFF),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Color(0xFF0B4F6C)),
      bodyText2: TextStyle(color: Color(0xFF040F16)),
    ),
  );
}
