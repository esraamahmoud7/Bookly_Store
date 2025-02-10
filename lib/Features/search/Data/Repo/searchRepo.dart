
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/models/book_model/book_model.dart';

abstract class searchRepo
{
  Future<Either<Failure,List<BookModel>>> fetchSpecificBooks({required String subject});


}