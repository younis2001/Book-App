import 'package:bookly/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/Custom_list_view.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_inducator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess)
          {
            return SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.3,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: GestureDetector(
                        onTap: (){
                          {
                            GoRouter.of(context).push(AppRouter.kBookDetailsView
                                ,extra: state.books[index]);
                          }
                        },
                        child: CustomListViewItem(
                          imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                        ),
                      ),
                    );
                  }
              ),
            );
          }else if (state is FeaturedBooksFailure)
            {
return CustomErrorMessage(errMessage: state.errMessage,);
            }
        else
          {
            return const CustomLoadingIndicator();
          }
      },
    );
  }
}