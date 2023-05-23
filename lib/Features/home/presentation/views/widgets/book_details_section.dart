import 'package:bookly/Features/home/data/model/book_bodel.dart';
import 'package:bookly/Features/home/presentation/views/widgets/Custom_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: CustomListViewItem(
              imageUrl:bookModel.volumeInfo!.imageLinks!.thumbnail??"" ,
            )
        ),
        const SizedBox(height: 43,),
        Text(
          bookModel.volumeInfo!.title!,style: Styles.textStyle30,
        ),
        const SizedBox(height: 6,),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo!.authors![0],style: Styles.textStyle18
              .copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500
          ),
          ),
        ),
        const SizedBox(height: 18,),
        BookRating(

          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 18,),
        BooksAction(bookModel:bookModel),
        const SizedBox(height: 50,),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',style:
          Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600
          ),
          ),
        ),
        const SizedBox(height: 16,),
      ],
    );
  }
}
