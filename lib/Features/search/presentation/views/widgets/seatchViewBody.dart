import 'package:booklt_store/Features/search/presentation/views/widgets/searchListview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/serviceLocator.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../Home/Data/Repo/home_Repo_implementation.dart';
import '../../../../Home/Presentation/views/widgets/customAppBarSearch.dart';
import '../../manager/specificBooks/specific_books_cubit.dart';
import 'CustomSearchTextField.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SpecificBooksCubit(getIt.get<HomeRepoImp>()),
      child: const Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomAppBarSearch(),
            SizedBox(height: 10,),
            CustomTextField(),
            const SizedBox(
              height: 16,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Search Result",
                  style: Styles.textStyle18,
                )),
            const SizedBox(
              height: 16,
            ),
            Expanded(child: SearchResultListView())
          ],
        ),
      ),
    );
  }
}

