import 'package:bookly/Features/home/data/model/book_bodel.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key,this.mainAxisAlignment= MainAxisAlignment.start}) : super(key: key);
final MainAxisAlignment mainAxisAlignment;


  @override
  Widget build(BuildContext context) {

    return Row(mainAxisAlignment: mainAxisAlignment,
      children:const [
        Icon(
          Icons.star,color: Colors.yellow,
        ),
        SizedBox(width: 6.3,),
        Text('4.8',
          style: Styles.textStyle16,),
        SizedBox(width: 6.3,),
        Text('(245)',
          style: Styles.textStyle14,),
      ],
    );
  }
}