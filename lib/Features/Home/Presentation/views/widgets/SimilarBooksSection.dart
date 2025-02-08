import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../Data/models/book_model/book_model.dart';
import 'SimilarBooksListView.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "You can also like",
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        similarBooksListView(),
      ],
    );
  }
}
