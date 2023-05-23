import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/book_bodel.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future <void> fetchSimilarBooks({required String category})async
  {
    emit(SimilarBooksLoading());
    var Result= await homeRepo.fetchSimilarBooks(category:category);
    Result.fold((failure)
    {
      emit(SimilarBooksFailure(failure.errMessage));
    },
            (books)
        {
          emit(SimilarBooksSuccess(books));
        }
    );
  }
}
