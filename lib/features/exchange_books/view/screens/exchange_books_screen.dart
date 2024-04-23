import 'package:flutter/material.dart';

import 'completed_screen.dart';
import 'pending_screen.dart';

class ExchangeBooksScreen extends StatelessWidget {
  const ExchangeBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //1.create for tab Controller [Done]
    // 2. create for all tabs [Done]
    //3. create content for each tab

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Exchange Books'),
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  // icon: Icon(Icons.book),
                  text: 'Pending',
                ),
                Tab(
                  // icon: Icon(Icons.book),
                  text: 'Completed',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              //screen1 => pending
              PendingScreen(),
              //screen2 => completed
              CompletedScreen()
            ],
          )),
    );
  }
}
