import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../exchange_books/view/screens/exchange_books_screen.dart';
import '../../../explore/view/screens/explore_screen.dart';
import '../../../my_page/view/screens/my_page_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  List<Widget> screens = const [
    ExploreScreen(),
    ExchangeBooksScreen(),
    MyPageScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          log(newIndex.toString());
          currentIndex = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Exchange Books',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Page',
          ),
        ],
      ),
    );
  }
}
