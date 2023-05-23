import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
children: const[
  CustomAppBar(),
  FeaturedBooksListView(),
  const SizedBox(height: 50,),
  Text('Best Seller',style: Styles.textStyle18,),
  const SizedBox(height: 15,),
  BestSellerListView(),
],
        ),
      ),
    );
  }
}







