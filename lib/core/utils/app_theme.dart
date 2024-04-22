import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    //screen background
    scaffoldBackgroundColor: const Color(0xffFFFFFF),
    //app bar theme
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.white,
    ),
    //text field theme
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.blueGrey,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffFF1FFF),
  );
}
