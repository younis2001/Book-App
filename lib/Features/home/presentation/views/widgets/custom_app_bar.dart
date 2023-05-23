import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:40,bottom: 20 ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 19,
          ),
          Spacer(),
          IconButton(
              onPressed: ()
              {
                GoRouter.of(context).push(AppRouter.kSearchView);
              },
              icon: Icon(Icons.search,size: 22,)),

        ],
      ),
    );
  }
}