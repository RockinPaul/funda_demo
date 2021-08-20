import 'package:flutter/foundation.dart';
import 'package:funda_demo/domain/models/details.dart';
import 'package:funda_demo/domain/models/feed.dart';
import 'package:funda_demo/domain/models/feed_item.dart';
import 'package:funda_demo/infrastructure/models/details_dto.dart';
import 'package:funda_demo/infrastructure/models/feed_dto.dart';
import 'package:funda_demo/infrastructure/models/media.dart';
import 'package:funda_demo/infrastructure/models/media_item.dart';
import 'package:funda_demo/domain/repositories/repository_base.dart';
import 'package:funda_demo/domain/data_sources/remote_data_source_base.dart';
import 'package:funda_demo/infrastructure/services/service_bundle.dart';

class Repository extends RepositoryBase {

  late final RemoteDataSourceBase apiService;

  Repository({RemoteDataSourceBase? service}) {
    apiService = service ?? ApiService(baseUrl);
  }

  Future<Feed> fetchFeed() async {
    final endpoint = '/feeds/Aanbod.svc/json/$key/?type=koop&zo=/amsterdam/';
    final rawResult = await apiService.get(endpoint: endpoint);
    print(rawResult);
    // Perform expensive computations in the background
    final feed = await compute(feedDtoFromJson, rawResult);

    print('Feed: $feed');
    print('Feed: ${feed.totaalAantalObjecten}');
    print('Feed: ${feed.objects.length}');
    print('Feed: ${feed.objects[0].adres}');

    return feed;
  }

  @override
  Future<Details> retrieveDetails(FeedItem object) async {
    final endpoint = '/feeds/Aanbod.svc/json/detail/$key/koop/${object.itemId}/';
    final rawResult = await apiService.get(endpoint: endpoint);
    print(rawResult);

    final result = await compute(detailsDtoFromJson, rawResult);

    print('Details: ${result.volledigeOmschrijving}');
    print('Media items: ${result.media.map((e) => e.contentType)}');

    return result;
  }
}