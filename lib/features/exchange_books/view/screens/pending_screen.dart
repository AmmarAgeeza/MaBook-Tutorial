import 'package:flutter/material.dart';

import '../../../../core/utils/commons.dart';

class PendingScreen extends StatelessWidget {
  const PendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        child: const Text('Show Bottom Sheet'),
        onTap: () {
          showBottomSheetMethod(context, const Center(child: Text('sss')));
        },
      ),
    );
  }
}
