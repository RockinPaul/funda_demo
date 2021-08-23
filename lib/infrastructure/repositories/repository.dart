import 'package:flutter/foundation.dart';
import 'package:funda_demo/domain/models/details.dart';
import 'package:funda_demo/domain/models/feed.dart';
import 'package:funda_demo/domain/models/feed_item.dart';
import 'package:funda_demo/infrastructure/models/details_dto.dart';
import 'package:funda_demo/infrastructure/models/feed_dto.dart';
import 'package:funda_demo/domain/repositories/repository_base.dart';
import 'package:funda_demo/domain/data_sources/remote_data_source_base.dart';
import 'package:funda_demo/infrastructure/services/service_bundle.dart';

class Repository extends RepositoryBase {

  final RemoteDataSourceBase remoteDataSource;

  Repository({required this.remoteDataSource});

  @override
  Future<Feed> fetchFeed() async {
    final endpoint = '/feeds/Aanbod.svc/json/$key/?type=koop&zo=/amsterdam/';
    final rawResult = await remoteDataSource.get(endpoint: endpoint);
    // Perform expensive computations in the background.
    return await compute(feedDtoFromJson, rawResult);
  }

  @override
  Future<Details> retrieveDetails(FeedItem object) async {
    final endpoint = '/feeds/Aanbod.svc/json/detail/$key/koop/${object.itemId}/';
    final rawResult = await remoteDataSource.get(endpoint: endpoint);
    // Perform expensive computations in the background.
    return await compute(detailsDtoFromJson, rawResult);
  }
}