import 'package:flutter/material.dart';
import 'package:ma_book/core/utils/commons.dart';

import '../../../../categories/view/screens/categories_screen.dart';
import '../title_see_all_component.dart';
import 'category_list_view.dart';

class TitleCategoryListView extends StatelessWidget {
  const TitleCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TilteSeeAllComponent(
          onPressed: () {
            navigateTo(context, const CategoriesScreen());
          },
          title: 'category',
        ),
        const CategoryListView(),
      ],
    );
  }
}
