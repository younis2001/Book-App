import 'package:bookly/Features/home/data/model/book_bodel.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo
{
Future<Either<Failure,List<BookModel>>> fetchNewsetBooks();
Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
Future<Either<Failure,List<BookModel>>> fetchSimilarBooks({required String category});
}