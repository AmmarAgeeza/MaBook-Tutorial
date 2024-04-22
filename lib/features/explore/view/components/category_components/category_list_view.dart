import 'package:flutter/material.dart';

import '../../../data/models/category_model.dart';
import 'category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: CategoryModel.categories.length,
                    itemBuilder: (context, index) {
                      return CategoryItem(model: CategoryModel.categories[index]);
                    }),
              );
  }
}