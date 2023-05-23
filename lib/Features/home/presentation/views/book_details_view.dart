import 'package:bookly/Features/home/data/model/book_bodel.dart';
import 'package:bookly/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_detais_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class BookDetailsView extends StatefulWidget {


  const BookDetailsView({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      category: widget.bookModel.volumeInfo!.categories![0]
    );
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
          child: BooksDetailsViewBody(
            bookModel: widget.bookModel,
          )
      ),
    );
  }
}
