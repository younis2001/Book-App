import 'package:bookly/Features/home/data/model/book_bodel.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/core/utils/services_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
abstract class AppRouter{
  static const kHomeView ="/kHomeView";
  static const kSearchView ="/kSearchView";
  static const kBookDetailsView ="/kBookDetailsView";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) =>const HomeView(),
      ),
      GoRoute(
        path:kBookDetailsView ,
        builder: (BuildContext context, GoRouterState state) =>  BlocProvider(
  create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
  child: BookDetailsView(
    bookModel: state.extra as BookModel ,
  ),
),
      ),
      GoRoute(
        path:kSearchView ,
        builder: (BuildContext context, GoRouterState state) =>const SearchView(),
      ),
    ],
  );
}