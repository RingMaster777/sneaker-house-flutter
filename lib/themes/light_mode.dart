import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData.light().copyWith(
  colorScheme: ThemeData.light().colorScheme.copyWith(
    primary: Colors.grey.shade200,
    surface: Colors.grey.shade300,
    secondary: Colors.white,
    inversePrimary: Colors.grey.shade700,
  ),
);
