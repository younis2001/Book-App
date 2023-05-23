import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/book_bodel.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';
part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future <void> fetchNewestBooks()async
  {
    emit(NewestBooksLoading());
    var Result= await homeRepo.fetchNewsetBooks();
    Result.fold((failure)
    {
      emit(NewestBooksFailure(failure.errMessage));
    },
            (books)
        {
          emit(NewestBooksSuccess(books));
        }
    );
  }
}
