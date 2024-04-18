import 'package:flutter/material.dart';

import '../../../../core/utils/commons.dart';
import 'login_needed_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //ToDo: Search for Native Splash Screen
  //ToDo: Search for Extention Methods
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      navigateAndFinish(context, const LoginNeededScreen());
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (_) => const LoginNeededScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Ma Book',
        style: TextStyle(fontWeight: FontWeight.w300, fontSize: 40),
      )),
    );
  }
}
