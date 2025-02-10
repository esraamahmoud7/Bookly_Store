import 'package:booklt_store/Features/search/Data/Repo/searchRepo.dart';
import 'package:booklt_store/core/errors/failure.dart';
import 'package:booklt_store/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/api_service.dart';

class searchRepoImp extends searchRepo
{
  final ApiServices apiServices;
  List<BookModel> books = [];

  searchRepoImp(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSpecificBooks({required String subject})async {
    try{
      var data = await apiServices.get(
          endPoint:
          '?Filtering=free-ebooks&Sorting=newest&q=subject:${subject}');


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
        print("i am in specific");
        if(books.isEmpty)
        {
          return left("sorry no books for this" as Failure);
        }
        return left(ServerFailure.fromDioError(e));
      }

      print("i am in specific");
      return left(ServerFailure(e.toString()));
    }
  }

}