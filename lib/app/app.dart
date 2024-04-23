import 'package:flutter/material.dart';
import 'package:ma_book/features/auth/view/screens/splash_screen.dart';

import '../core/utils/app_strings.dart';
import '../core/utils/app_theme.dart';
import '../features/base_screen/view/screens/base_screen.dart';

class MaBook extends StatelessWidget {
  const MaBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Ma Book', //hard coded
      title: AppStrings.appName, //centrilazed
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      darkTheme: AppTheme.darkTheme,
      home: const BaseScreen(),
    );
  }
}
