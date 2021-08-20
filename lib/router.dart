import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda_demo/blocs/details_cubit/details_cubit.dart';
import 'package:funda_demo/blocs/feed_cubit/feed_cubit.dart';
import 'package:funda_demo/domain/repositories/repository_base.dart';
import 'package:funda_demo/presentation/feed_page.dart';
import 'package:funda_demo/presentation/details_page.dart';

/// Manage and provide the FeedCubit and DetailsCubit to the appropriate generated routes.
class AppRouter {

  final RepositoryBase repository;

  late final FeedCubit _feedCubit;
  late final DetailsCubit _detailsCubit;

  AppRouter({required this.repository}) {
    _feedCubit = FeedCubit(repository: repository);
    _detailsCubit = DetailsCubit(repository: repository);
  }

  MaterialPageRoute onGenerateRoute(String? routeName) {

    Widget page;
    switch (routeName) {
      case '/':
        page = FeedPage();
        break;
      case '/details':
        page = DetailsPage();
        break;
      default:
        throw 'Unknown route';
    }
    return MaterialPageRoute(
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider.value(value: _feedCubit),
          BlocProvider.value(value: _detailsCubit),
        ],
        child: page,
      ),
    );
  }

  void dispose() {
    _feedCubit.close();
    _detailsCubit.close();
  }
}
