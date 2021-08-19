import 'package:flutter/material.dart';
import 'package:funda_demo/presentation/feed_page.dart';
import 'package:funda_demo/presentation/details_page.dart';

class Routes {
  static const root = '/';
  static const details = '/details';

  static MaterialPageRoute onGenerateRoute(String? routeName) {
    Widget page;
    switch (routeName) {
      case Routes.root:
        page = FeedPage();
        break;
      case Routes.details:
        page = DetailsPage();
        break;
      default:
        throw 'Unknown route';
    }
    return MaterialPageRoute(builder: (context) => page);
  }
}