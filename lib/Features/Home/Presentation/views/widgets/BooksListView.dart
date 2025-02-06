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
                    child: BookImageItem(imgURL: state.books[index].volumeInfo.imageLinks?.thumbnail ?? 'https://th.bing.com/th/id/OIP.3Kt8D-Um9WqJO221WbKIvgAAAA?pid=ImgDet&w=206&h=154&c=7&dpr=1.3',),
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
