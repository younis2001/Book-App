import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/book_bodel.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
 Future <void> fetchFeaturedBooks()async
 {
   emit(FeaturedBooksLoading());
   var Result= await homeRepo.fetchFeaturedBooks();
   Result.fold((failure)
   {
     emit(FeaturedBooksFailure(failure.errMessage));
   },
           (books)
       {
         emit(FeaturedBooksSuccess(books));
       }
   );
 }
}
