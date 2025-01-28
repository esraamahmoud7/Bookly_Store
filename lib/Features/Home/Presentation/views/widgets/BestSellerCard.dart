import 'package:booklt_store/Features/Home/Data/models/book_model/book_model.dart';
import 'package:booklt_store/Features/Home/Presentation/views/widgets/cachedNetwork.dart';
import 'package:booklt_store/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/AppRouters.dart';
import 'bestSeller_BookDataCard.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDetails);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: cachedNetwork(imgURL: book.volumeInfo.imageLinks.thumbnail,)
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(child: BookDataCard(book: book,))
          ],
        ),
      ),
    );
  }
}
