import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage( {Key? key,required this.errMessage,});
final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errMessage,style: Styles.textStyle18,);
  }
}
