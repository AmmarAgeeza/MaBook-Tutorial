import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  const UserData({
    super.key,
    required this.name,
    required this.password,
  });
  final String name;
  final String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Text(name),
          Text(password),
        ],
      ),
    ));
  }
}
