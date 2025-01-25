import 'package:flutter/material.dart';

import 'BestSellerCard.dart';

class BookSmallListViewItem extends StatelessWidget {
  const BookSmallListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: BestSellerCard(),
          );
        });
  }
}
