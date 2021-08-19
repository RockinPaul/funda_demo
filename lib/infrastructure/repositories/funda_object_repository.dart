import 'package:flutter/foundation.dart';
import 'package:funda_demo/infrastructure/models/funda_dto.dart';
import 'package:funda_demo/domain/models/feed_object.dart';
import 'package:funda_demo/domain/models/feed.dart';
import 'package:funda_demo/domain/repositories/funda_object_repository_base.dart';
import 'package:funda_demo/domain/data_sources/remote_data_source_base.dart';
import 'package:funda_demo/infrastructure/services/service_bundle.dart';

class FundaObjectRepository extends FundaObjectRepositoryBase {

  late final RemoteDataSourceBase apiService;

  FundaObjectRepository({RemoteDataSourceBase? service}) {
    apiService = service ?? ApiService(baseUrl);
  }

  Future<Feed> fetchFeed() async {
    final endpoint = '/feeds/Aanbod.svc/json/$key/?type=koop&zo=/amsterdam/';
    final rawResult = await apiService.get(endpoint: endpoint);
    print(rawResult);
    // Perform expensive computations in the background
    final feed = await compute(feedFromJson, rawResult);

    print('Feed: $feed');
    print('Feed: ${feed.accountStatus}');
    print('Feed: ${feed.emailNotConfirmed}');
    print('Feed: ${feed.totaalAantalObjecten}');
    print('Feed: ${feed.validationFailed}');
    print('Feed: ${feed.validationReport}');
    print('Feed: ${feed.metadata.titel}');
    print('Feed: ${feed.objects.length}');
    print('Feed: ${feed.objects[0].adres}');

    return feed;
  }

  @override
  FeedObject retrieveDetails(FeedObject object) {
    // TODO: implement retrieveObject
    throw UnimplementedError();
  }
}