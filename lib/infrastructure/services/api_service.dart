import 'dart:async';
import 'dart:convert';

import 'package:funda_demo/infrastructure/services/api_exception.dart';
import 'package:funda_demo/domain/data_sources/remote_data_source_base.dart';
import 'package:http/http.dart' as http;

// Usually, we receive this from remote data source or specify as an external config
// (like that: https://dartcode.org/docs/using-dart-define-in-flutter/)
// to avoid exposure via the source control system.
const key = 'ac1b0b1572524640a0ecc54de453ea9f';

class ApiService extends RemoteDataSourceBase {
  static late final ApiService _instance;
  @override
  late final String baseUrl;
  late final http.Client httpClient;

  factory ApiService(String baseUrl) {
    _instance = ApiService._();
    _instance.baseUrl = baseUrl;
    _instance.httpClient = http.Client();
    return _instance;
  }

  static ApiService get instance => _instance;

  ApiService._();

  @override
  Future<dynamic> get({
    required String endpoint,
    Map<String, String> headers = const {'Content-Type': 'application/json'},
  }) async {
    final url = Uri.parse('$baseUrl$endpoint');
    try {
      final response = await httpClient.get(url, headers: headers);
      if (response.statusCode != 200) {
        throw ApiException();
      }
      return json.decode(response.body);
    } on http.ClientException catch (e) {
      throw ApiException(
          message:
              'Response does not have a success status code: ${e.message}');
    } on TimeoutException catch (e) {
      throw ApiException(message: 'Response timeout: ${e.message}');
    } on Exception {
      throw ApiException();
    }
  }
}
