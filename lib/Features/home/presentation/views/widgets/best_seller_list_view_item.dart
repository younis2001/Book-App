import 'package:bookly/Features/home/data/model/book_bodel.dart';
import 'package:bookly/Features/home/presentation/views/widgets/Custom_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView
            ,extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
           CustomListViewItem(imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail! ),
            const SizedBox(width: 30,),
            const SizedBox(height: 3,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.5,
                    child: Text(
                      bookModel.volumeInfo!.title! ,
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                    Text(bookModel.volumeInfo!.authors![0]
                    ,style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text('Free',style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold
                      ),
                      ),
                      Spacer(),
                     BookRating()


                ],
              ),
            ])
            ) ],
        ),
      ),
    );
  }
}
