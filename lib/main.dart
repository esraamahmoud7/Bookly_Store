import 'package:booklt_store/Features/Home/Presentation/manager/FeaturedBooks/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Features/Home/Data/Repo/home_Repo_implementation.dart';
import 'Features/Home/Presentation/manager/newestBooks/newest_books_cubit.dart';
import 'constants.dart';
import 'core/utils/AppRouters.dart';
import 'core/utils/serviceLocator.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> FeaturedBooksCubit(getIt.get<HomeRepoImp>())),
        BlocProvider(create: (context)=> NewestBooksCubit(getIt.get<HomeRepoImp>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
