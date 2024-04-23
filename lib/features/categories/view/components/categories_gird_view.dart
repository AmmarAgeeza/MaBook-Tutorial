import 'package:flutter/material.dart';

import '../../../explore/data/models/category_model.dart';
import '../../../explore/view/components/category_components/category_item.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 16,
            crossAxisSpacing: 14,
            crossAxisCount: 3, childAspectRatio: 100 / 100, //width / height,
          ),
          itemCount: CategoryModel.categories.length,
          itemBuilder: (context, index) {
            return CategoryItem(
              model: CategoryModel.categories[index],
            );
          });
  }
}