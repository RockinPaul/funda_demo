import 'package:funda_demo/domain/models/details.dart';
import 'package:funda_demo/domain/models/feed.dart';
import 'package:funda_demo/domain/models/feed_item.dart';

abstract class RepositoryBase {
  Future<Feed> fetchFeed();
  Future<Details> retrieveDetails(FeedItem item);
}