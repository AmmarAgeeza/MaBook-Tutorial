import 'package:flutter/material.dart';

import '../features/auth/view/screens/splash_screen.dart';

class MaBook extends StatelessWidget {
  const MaBook({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ma Book',
      home: SplashScreen(),
    );
  }
}