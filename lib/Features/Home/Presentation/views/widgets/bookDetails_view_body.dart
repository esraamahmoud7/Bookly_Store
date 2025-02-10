import 'package:flutter/material.dart';
import '../../../../../core/models/book_model/book_model.dart';
import 'BookDetailsSection.dart';
import 'SimilarBooksSection.dart';

class bookDetailsViewBody extends StatelessWidget {
  const bookDetailsViewBody({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Column(
        children: [
          BookDetailsSection(book: book,),
          SizedBox(height: 15,),
          Expanded(child: const SizedBox(height: 20)),
          SimilarBooksSection(),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
