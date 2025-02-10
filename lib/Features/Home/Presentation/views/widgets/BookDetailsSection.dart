import 'package:flutter/material.dart';
import '../../../../../core/models/book_model/book_model.dart';
import '../../../../../core/utils/styles.dart';
import 'BookRate.dart';
import 'BooksAction.dart';
import 'CustomAppBarBookDetails.dart';
import 'CustomBookImage.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    print("in BookDetailsSection");
    print(book.toJson());
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const SafeArea(child: CustomAppBarBookDetails()),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: BookImageItem(book:book),),
        SizedBox(
          height: 43,
        ),
        Text(book.volumeInfo.title!,
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(book.volumeInfo.authors![0],
              style: Styles.textStyle20.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
        ),
        const SizedBox(
          height: 5,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating:
          book.volumeInfo.averageRating?.round() ?? 0,
          count: book.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 20,
        ),
        BooksAction(book: book,),
      ],
    );
  }
}
