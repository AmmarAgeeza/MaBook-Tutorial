import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ma_book/features/explore/data/models/category_model.dart';

import '../../../../../core/utils/app_styles.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({super.key, required this.model});
  final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: const TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 30,
            ),
            Icon(model.icon),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(model.name,
                  style: AppStyles.bold16.copyWith(
                      // color: AppColors.white,
                      )
                  // const TextStyle(
                  //   fontSize: 16,
                  //   color:AppColors.white
                  // ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
