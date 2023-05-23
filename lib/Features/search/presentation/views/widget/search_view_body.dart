import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/Features/search/presentation/views/widget/custom_search_text_field.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children:const [
          CustomSearchTextField(),
           SizedBox(
            height: 16,
          ),
          Text("search Result",
          style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        shrinkWrap: true,
        physics:const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context,index)
        {
          return const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.0),
child: Text('data'),
            // child:  BestSellerListViewItem(),
          );
        }

    );
  }
}
