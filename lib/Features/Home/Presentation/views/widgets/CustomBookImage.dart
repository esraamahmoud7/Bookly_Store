import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8/4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage)
          )
        ),
      ),
    );
  }
}
