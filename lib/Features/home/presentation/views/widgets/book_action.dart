import 'package:bookly/Features/home/data/model/book_bodel.dart';
import 'package:bookly/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: '19.99€',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
         Expanded(
           child: CustomButton(
             onPressed: ()async{
               Uri uri =Uri.parse(bookModel.volumeInfo!.previewLink!);
               if (await canLaunchUrl(uri)) {
await launchUrl(uri);
               }else
                 {

                 }
             },
             fontSize:16 ,
            text: 'preview',
            backgroundColor: Colors.deepOrangeAccent,
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
        ),
         ),
      ],
    );
  }
}
