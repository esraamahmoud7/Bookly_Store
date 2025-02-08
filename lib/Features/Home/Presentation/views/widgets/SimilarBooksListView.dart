import 'package:booklt_store/Features/Home/Presentation/manager/similarBooks/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/customErrorWidget.dart';
import '../../../../../core/widgets/custom_Loading_Indicator.dart';
import '../../../Data/models/book_model/book_model.dart';
import 'CustomBookImage.dart';

class similarBooksListView extends StatelessWidget {
  const similarBooksListView({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if( state is SimilarBooksSuccess)
            {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: BookImageItem(book: state.books[index]),
                  );
                },
              );
            }
            else if(state is SimilarBooksFailure)
              {
                return CustomErrorwidget(errMessage: state.errMessage);
              }
              else
                {
                  return CustomLoadingIndicator();
                }
  },
),
    );
  }
}
