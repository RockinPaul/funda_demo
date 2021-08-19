import 'package:funda_demo/domain/models/feed.dart';

import '../models/feed_object.dart';
import '../models/details.dart';

abstract class RepositoryBase {
  Future<Feed> fetchFeed();
  Future<Details> retrieveDetails(FeedObject object);
}