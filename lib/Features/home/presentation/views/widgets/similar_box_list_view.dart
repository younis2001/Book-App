import 'package:bookly/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/Custom_list_view.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_inducator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess)
          {
        return SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .17,
              child: ListView.builder(
                itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomListViewItem(
                        imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail??"",
                      ),
                    );
                  }
              ),
            );
          }
        else if (state is SimilarBooksFailure)
          {
            return CustomErrorMessage(errMessage: state.errMessage);
          }
else
  {
    return const CustomLoadingIndicator();
  }

      },
    );
  }
}
