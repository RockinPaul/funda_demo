import 'package:funda_demo/domain/models/feed.dart';

import '../models/feed_object.dart';

abstract class FundaObjectRepositoryBase {
  Future<Feed> fetchFeed();
  Future<FeedObject> retrieveDetails(FeedObject object);
}