import 'package:booklt_store/Features/Home/Presentation/manager/FeaturedBooks/featured_books_cubit.dart';
import 'package:booklt_store/core/widgets/customErrorWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/AppRouters.dart';
import '../../../../../core/widgets/custom_Loading_Indicator.dart';
import 'CustomBookImage.dart';

class CardListView extends StatelessWidget {
  const CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if( state is FeaturedBooksSuccess)
          {
            return SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.3,
              child: ListView.builder(
                //remove the empty from the sides when scroll
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: BookImageItem(book: state.books[index]),
                  );
                },
              ),
            );
          }
        else if(state is FeaturedBooksFailure)
          {
            return CustomErrorwidget(errMessage: state.errMessage);
          }
        else
          {
            return CustomLoadingIndicator();
          }
      },
    );
  }
}
