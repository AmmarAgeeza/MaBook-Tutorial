import 'package:flutter/material.dart';

import '../../../data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.model});
  final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 80,
      width: 80,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(model.icon),
            Text(model.name, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
