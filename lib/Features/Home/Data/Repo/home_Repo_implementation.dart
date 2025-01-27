import 'package:booklt_store/Features/Home/Data/Repo/homeRepo.dart';
import 'package:booklt_store/Features/Home/Data/models/book_model/book_model.dart';
import 'package:booklt_store/core/errors/failure.dart';
import 'package:booklt_store/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo
{

  final ApiServices apiServices;

  HomeRepoImp(this.apiServices);
  @override

  // there is nothing return bestseller so will get news
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks()async {
    try{
      var data = await apiServices.get(
          endPoint:
          '?Filtering=free-ebooks&q=subject:learning English');

      List<BookModel> books = [];

      for(var item in data['items'])
        {
          books.add(BookModel.fromJson(item));
        }

      return right(books);
    }
    catch(e)
    {
      if(e is DioException)
        {
          return left(ServerFailure.fromDioError(e));
        }
      return left(ServerFailure(e.toString()));
    }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{

    try{
      var data = await apiServices.get(
          endPoint:
          '?Filtering=free-ebooks&q=subject:English language');

      List<BookModel> books = [];

      for(var item in data['items'])
      {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    }
    catch(e)
    {
      if(e is DioException)
      {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}