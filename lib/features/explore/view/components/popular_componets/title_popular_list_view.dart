import 'package:flutter/material.dart';

import '../title_see_all_component.dart';
import 'popular_list_view.dart';

class TiltePopularListView extends StatelessWidget {
  const TiltePopularListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TilteSeeAllComponent(
          onPressed: () {},
          title: 'popular',
        ),
        const PopularListView(),
      ],
    );
  }
}
