import 'package:flutter/material.dart';

class ListTileComponet extends StatelessWidget {
  const ListTileComponet({
    super.key,
    required this.title,
    this.icon,
    this.isContinueWithEmail = false, required this.onTab,
  });
  final String title;
  final IconData? icon;
  final bool isContinueWithEmail;
  final Function() onTab;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTab,
      shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1,
              color: isContinueWithEmail ? Colors.black : Colors.grey)),
      tileColor: isContinueWithEmail ? Colors.black : Colors.white,
      leading: icon == null
          ? null
          : Icon(icon,
              color: !isContinueWithEmail ? Colors.black : Colors.white),
      title: Center(
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: !isContinueWithEmail ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
