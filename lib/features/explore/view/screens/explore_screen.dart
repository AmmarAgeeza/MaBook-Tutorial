import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../components/category_components/title_category_list_view.dart';
import '../components/popular_componets/title_popular_list_view.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Badge(
              label: Text('1'),
              child: Icon(Icons.notifications),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: TextEditingController(),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Book name or writer name',
                  hintStyle: TextStyle(color: Color(0xffB1BEBF)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffEEF1F1),
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xffFAFAFA),
                  // fillColor: Theme.of(context).inputDecorationTheme.fillColor
                ),
              ),
              //category componet
              const TitleCategoryListView(),
              /*
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: CategoryModel.categories
                      .map((e) => Container(
                            margin: const EdgeInsets.only(right: 8),
                            height: 80,
                            width: 80,
                            color: const Color(0xffFAFAFA),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(e.icon),
                                  Text(e.name),
                                ],
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),*/
              //popular
              const TiltePopularListView(),
              //recently added
            ],
          ),
        ),
      ),
    );
  }
}
