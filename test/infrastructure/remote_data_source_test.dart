import 'package:http/http.dart' as http;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:funda_demo/infrastructure/services/api_service.dart';

import '../fixtures/fixture_reader.dart';
import 'remote_data_source_test.mocks.dart';

final baseUrl = 'http://partnerapi.funda.nl';
final endpoint = '/feeds/Aanbod.svc/json/ac1b0b1572524640a0ecc54de453ea9f/?type=koop&zo=/amsterdam/';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([http.Client])
void main() {
  group('get', () {

    test('should perform a GET request on a given URL', () async {
      final client = MockClient();
      final apiService = ApiService(client: client);
      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(client
          .get(any))
          .thenAnswer((_) async =>
          http.Response(fixture('feed.json'), 200));
      
      apiService.get(endpoint: endpoint);

      verify(client.get(Uri.parse('$baseUrl$endpoint')));
    });

    test('should throws an exception if the http call completes with an error', () {
      final client = MockClient();
      final apiService = ApiService(client: client);
      // Use Mockito to return an unsuccessful response when it calls the
      // provided http.Client.
      when(client
          .get(any))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(apiService.get(endpoint: '$baseUrl$endpoint'), throwsException);
    });
  });
}