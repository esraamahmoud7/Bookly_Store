import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/models/book_model/book_model.dart';
import '../../../../../core/utils/styles.dart';
import 'BookRate.dart';

class BookDataCard extends StatelessWidget {
  const BookDataCard({
    super.key, required this.book,
  });

  final BookModel book;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: Text(
              book.volumeInfo.title!,
              style:
                  Styles.textStyle20.copyWith(fontFamily: kPT, fontSize: 22),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )),
        const SizedBox(
          height: 3,
        ),
        Opacity(
            opacity: 0.7,
            child: Text(
              book.volumeInfo.authors![0],
              maxLines: 1,
              style: Styles.textStyle16.copyWith(fontStyle: FontStyle.italic),
            )),
        SizedBox(
          height: 4,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Free",
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            // SizedBox(width: 60,),
            // Icon(Icons.star,color: Colors.yellow,),
            BookRating(
              rating:
              book.volumeInfo.averageRating?.round() ?? 0,
              count: book.volumeInfo.ratingsCount ?? 0,
            ),
          ],
        )
      ],
    );
  }
}
