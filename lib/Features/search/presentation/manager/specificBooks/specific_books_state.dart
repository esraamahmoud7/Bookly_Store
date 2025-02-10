part of 'specific_books_cubit.dart';

@immutable
abstract class SpecificBooksState extends Equatable {
  SpecificBooksState();

  @override
  List<Object> get props => [];
}

class SpecificBooksInitial extends SpecificBooksState {}

class SpecificBooksFailure extends SpecificBooksState {
  final String errMessage;

   SpecificBooksFailure(this.errMessage);

}

class SpecificBooksSuccess extends SpecificBooksState {
  final List<BookModel> books;

  SpecificBooksSuccess(this.books);
}

class SpecificBooksLoading extends SpecificBooksState {}

