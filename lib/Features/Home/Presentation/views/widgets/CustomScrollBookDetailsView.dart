import 'package:booklt_store/Features/Home/Data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../book_details_view.dart';

class customScrollBookDetailView extends StatelessWidget {
  const customScrollBookDetailView({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    print("in customScrollBookDetailView");
    print(book.toJson());
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: bookDetailsView(book: book,),
        )
      ],
    );
  }
}
