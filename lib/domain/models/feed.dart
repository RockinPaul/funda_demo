import 'package:funda_demo/domain/models/feed_item.dart';

abstract class Feed {
  abstract final int itemsCount;
  abstract final List<FeedItem> items;
}