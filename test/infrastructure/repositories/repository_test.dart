import 'dart:convert';

import 'package:funda_demo/domain/models/feed.dart';
import 'package:funda_demo/infrastructure/repositories/repository.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:matcher/matcher.dart';
import 'package:funda_demo/infrastructure/services/api_service.dart';

import '../../fixtures/fixture_reader.dart';
import 'repository_test.mocks.dart';

final baseUrl = 'http://partnerapi.funda.nl';
final feedEndpoint = '/feeds/Aanbod.svc/json/ac1b0b1572524640a0ecc54de453ea9f/?type=koop&zo=/amsterdam/';
final detailsEndpoint = '/feeds/Aanbod.svc/json/detail/ac1b0b1572524640a0ecc54de453ea9f/koop/13/';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([ApiService])
void main() {
  group('fetchFeed', () {

    test('should perform fetch', () async {
      final apiService = MockApiService();
      final repository = Repository(remoteDataSource: apiService);

      when(apiService
          .get(endpoint: feedEndpoint))
          .thenAnswer((_) async =>
          json.decode(fixture('feed.json')));

      repository.fetchFeed();

      // Verify if ApiService get(...) method got called.
      verify(apiService.get(endpoint: feedEndpoint));
    });

    test('should fetch Feed object', () async {
      final apiService = MockApiService();
      final repository = Repository(remoteDataSource: apiService);

      when(apiService
          .get(endpoint: feedEndpoint))
          .thenAnswer((_) async =>
          json.decode(fixture('feed.json')));

      final result = await repository.fetchFeed();

      // Make sure fetched object has the appropriate type.
      expect(result, isA<Feed>());
    });
  });
}