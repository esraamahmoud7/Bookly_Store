import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../../core/models/book_model/book_model.dart';
import '../../../Data/Repo/homeRepo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async
  {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure)
        {
          emit(FeaturedBooksFailure(failure.message));
        }, (books)
        {
          emit(FeaturedBooksSuccess(books));
        }
    );
  }

}
