import 'package:flutter/material.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 100,
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //stack
          SizedBox(
            height: 105,
            width: 100,
            child: Stack(
              children: [
                Container(
                  height: 105,
                  width: 100,
                  color: Colors.blueGrey,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'assets/images/b1.png',
                    height: 80,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: const Color(0xffEEF1F1),
                    height: 18,
                    width: double.infinity,
                    child: const Text('24 P'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          //title
          const Text(
            'The Psychology of Money',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          //category
          Container(
              // height: 50,
              padding: const EdgeInsets.symmetric(
                vertical: 3,
                horizontal: 8,
              )
              // +
              // const EdgeInsets.only(
              //   top: 3,
              // )
              ,
              decoration: BoxDecoration(
                  color: const Color(0xffEEF1F1),
                  borderRadius: BorderRadius.circular(12)),
              child: const Text('Psychology')),
        ],
      ),
    );
  }
}
