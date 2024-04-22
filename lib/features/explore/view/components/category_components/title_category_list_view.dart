import 'package:flutter/material.dart';

import '../title_see_all_component.dart';
import 'category_list_view.dart';

class TitleCategoryListView extends StatelessWidget {
  const TitleCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TilteSeeAllComponent(
          onPressed: () {},
          title: 'category',
        ),
        const CategoryListView(),
      ],
    );
  }
}
