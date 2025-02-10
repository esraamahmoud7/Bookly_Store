import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/customErrorWidget.dart';
import '../../../../../core/widgets/custom_Loading_Indicator.dart';
import '../../../../Home/Presentation/views/widgets/BestSellerCard.dart';
import '../../manager/specificBooks/specific_books_cubit.dart';
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecificBooksCubit, SpecificBooksState>(
      builder: (context, state) {
        if(state is SpecificBooksSuccess)
        {
          return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: BestSellerCard(book: state.books[index],)
                );
              });
        }
        else if(state is SpecificBooksFailure)
        {
          // print(state.errMessage);
          // if(state.errMessage == "type 'Null' is not a subtype of type 'Iterable<dynamic>")
          //   {
              return CustomErrorwidget(errMessage: "sorry no books for this");
          // return CustomErrorwidget(errMessage: state.errMessage);
        }
        else
        {
          return CustomLoadingIndicator();
        }

      },
    );
  }
}
