import 'package:flutter/material.dart';

class CustomTheme {
  static final ThemeData defaultTheme = _buildTheme();
  static const ColorContainerGame = Color.fromARGB(255, 76, 111, 224);
  static const ColorIconEyes = Colors.white;
  static const ColorFond = Color(0xFF060409);

  static ThemeData _buildTheme() {
    ThemeData build = ThemeData.light();

    return build.copyWith(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: ColorIconEyes),
        backgroundColor: ColorFond,
        elevation: 0,
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: Colors.white),
      ),
      primaryColor: ColorContainerGame,
    );
  }
}
