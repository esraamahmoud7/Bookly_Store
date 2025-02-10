import 'package:booklt_store/Features/Home/Presentation/manager/newestBooks/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/customErrorWidget.dart';
import '../../../../../core/widgets/custom_Loading_Indicator.dart';
import 'BestSellerCard.dart';

class BestSellerBookListViewItem extends StatelessWidget {
  const BestSellerBookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess)
          {
            return ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: BestSellerCard(book: state.books[index],),
                  );
                });
          }
        else if(state is NewestBooksFailure)
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
