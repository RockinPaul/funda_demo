import '../models/feed_object.dart';

abstract class FundaObjectRepositoryBase {
  Future<List<FeedObject>> fetchFeed();
  FeedObject retrieveDetails(FeedObject object);
}