import 'package:booklt_store/Features/Home/Data/models/book_model/book_model.dart';
import 'package:booklt_store/Features/Home/Presentation/manager/similarBooks/similar_books_cubit.dart';
import 'package:booklt_store/Features/Home/Presentation/views/widgets/bookDetails_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class bookDetailsView extends StatefulWidget {
  const bookDetailsView({super.key, required this.book});

  final BookModel book;

  @override
  State<bookDetailsView> createState() => _bookDetailsViewState();
}

class _bookDetailsViewState extends State<bookDetailsView> {

  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(subject: widget.book.volumeInfo.categories?[0] ?? "Learning English");
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bookDetailsViewBody(book: widget.book),
    );
  }
}
