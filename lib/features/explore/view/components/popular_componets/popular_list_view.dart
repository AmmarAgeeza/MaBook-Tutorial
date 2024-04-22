import 'package:flutter/material.dart';

import 'popular_item.dart';

class PopularListView extends StatelessWidget {
  const PopularListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 192,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return const PopularItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }
}
