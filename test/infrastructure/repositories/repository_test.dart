import 'package:funda_demo/infrastructure/repositories/repository.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:funda_demo/infrastructure/services/api_service.dart';

import '../../fixtures/fixture_reader.dart';
import 'repository_test.mocks.dart';

final baseUrl = 'http://partnerapi.funda.nl';
final feedEndpoint = '/feeds/Aanbod.svc/json/ac1b0b1572524640a0ecc54de453ea9f/?type=koop&zo=/amsterdam/';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([ApiService])
void main() {
  group('fetchFeed', () {
    test('should fetch raw data for feed', () async {
      final apiService = MockApiService();
      final repository = Repository(remoteDataSource: apiService);
      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(apiService
          .get(endpoint: feedEndpoint))
          .thenAnswer((_) async =>
          http.Response(fixture('feed.json'), 200));

      repository.fetchFeed();

      // Verify if ApiService get(...) method got called.
      verify(apiService.get(endpoint: feedEndpoint));
      
    });
  });
}