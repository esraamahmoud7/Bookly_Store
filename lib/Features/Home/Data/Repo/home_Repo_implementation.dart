import 'package:booklt_store/Features/Home/Data/Repo/homeRepo.dart';
import 'package:booklt_store/Features/Home/Data/models/book_model/book_model.dart';
import 'package:booklt_store/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo
{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestsellerBooks() {
    // TODO: implement fetchBestsellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}