import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../Data/Repo/homeRepo.dart';
import '../../../Data/models/book_model/book_model.dart';
import '../FeaturedBooks/featured_books_cubit.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async
  {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure)
    {
      emit(NewestBooksFailure(failure.message));
    }, (books)
    {
      emit(NewestBooksSuccess(books));
    }
    );
  }
}
