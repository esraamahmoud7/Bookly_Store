import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../Data/Repo/homeRepo.dart';
import '../../../Data/models/book_model/book_model.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {

  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String subject}) async
  {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(subject: subject);

    result.fold((failure)
    {
      fetchSimilarBooks(subject: "English Language");
      emit(SimilarBooksFailure(failure.message));
    }, (books)
    {
      emit(SimilarBooksSuccess(books));
    }
    );
  }
}
