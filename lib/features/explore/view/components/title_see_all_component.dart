import 'package:flutter/material.dart';

class TilteSeeAllComponent extends StatelessWidget {
  const TilteSeeAllComponent({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xff3E494A),
        ),
      ),
      trailing: TextButton(
        onPressed: onPressed,
        child: const Text(
          'See all',
          style: TextStyle(
              decoration: TextDecoration.underline, color: Color(0xff3E494A)),
        ),
      ),
    );
  }
}
