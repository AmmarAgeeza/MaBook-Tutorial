import 'package:flutter/material.dart';

void navigateTo(BuildContext  context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
}
void navigateAndFinish(BuildContext  context, Widget screen) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => screen));
}
