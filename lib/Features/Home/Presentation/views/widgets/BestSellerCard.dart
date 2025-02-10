import 'package:booklt_store/Features/Home/Presentation/views/widgets/cachedNetwork.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/models/book_model/book_model.dart';
import '../../../../../core/utils/AppRouters.dart';
import 'bestSeller_BookDataCard.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(book.volumeInfo.title);
        GoRouter.of(context).push(AppRouter.KBookDetails,extra: book,);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: cachedNetwork(imgURL:  book.volumeInfo.imageLinks?.thumbnail ??
                  'https://th.bing.com/th/id/OIP.3Kt8D-Um9WqJO221WbKIvgAAAA?pid=ImgDet&w=206&h=154&c=7&dpr=1.3')
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
