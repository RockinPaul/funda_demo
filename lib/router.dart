import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda_demo/blocs/details_cubit/details_cubit.dart';
import 'package:funda_demo/blocs/feed_cubit/feed_cubit.dart';
import 'package:funda_demo/presentation/feed_page.dart';
import 'package:funda_demo/presentation/details_page.dart';

import 'infrastructure/repositories/funda_object_repository.dart';
import 'infrastructure/services/api_service.dart';
import 'infrastructure/services/endpoints.dart';

class AppRouter {
  final _apiService = ApiService(baseUrl);

  MaterialPageRoute onGenerateRoute(String? routeName) {
    final FundaObjectRepository repository = FundaObjectRepository(
      service: _apiService,
    );

    final _feedCubit = FeedCubit(repository: repository);
    final _detailsCubit = DetailsCubit(repository: repository);

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
}
