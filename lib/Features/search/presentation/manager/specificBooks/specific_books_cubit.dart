import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../../core/models/book_model/book_model.dart';
import '../../../../Home/Data/Repo/homeRepo.dart';

part 'specific_books_state.dart';

class SpecificBooksCubit extends Cubit<SpecificBooksState> {
  SpecificBooksCubit(this.homeRepo) : super(SpecificBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSpecificBooks({required String subject}) async
  {
    emit(SpecificBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(subject: subject);

    result.fold((failure)
    {
      // fetchSpecificBooks(subject: "English Language");
      emit(SpecificBooksFailure(failure.message));
    }, (books)
    {
      emit(SpecificBooksSuccess(books));
    }
    );
  }
}
