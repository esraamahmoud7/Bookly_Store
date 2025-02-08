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
          '?Filtering=free-ebooks&Sorting=newest&q=subject:learning English');

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
          print("i am in newest");
          return left(ServerFailure.fromDioError(e));
        }
      print("i am in newest");
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
        print("i am in featured");
        return left(ServerFailure.fromDioError(e));

      }
      print("i am in featured");
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String subject})async {
    try{
      var data;

      if(subject == null)
        {
           data = await apiServices.get(
              endPoint:
              '?Filtering=free-ebooks&Sorting=relevance&q=subject:Learning English');
        }
      else
        {
           data = await apiServices.get(
              endPoint:
              '?Filtering=free-ebooks&Sorting=relevance&q=subject:${subject}');
        }
      if(data.length == 0)
        {
          return fetchFeaturedBooks();
        }

      List<BookModel> books = [];

      for(var item in data['items'])
      {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    }
    catch(e)
    {
      print("error in siliar");
      if(e is DioException)
      {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}

