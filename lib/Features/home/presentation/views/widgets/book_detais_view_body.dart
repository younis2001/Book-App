import 'package:bookly/Features/home/data/model/book_bodel.dart';
import 'package:bookly/Features/home/presentation/views/widgets/Custom_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_box_list_view.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override

  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
           const CustomBookDetailsAppBar(),
            BookDetailsSection(
              bookModel: bookModel,
            ),
            const SimilarBooksListView(),
            const SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}

