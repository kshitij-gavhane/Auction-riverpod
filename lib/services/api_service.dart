
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> fetchSomething(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      return response;
    } catch (error) {
      print("Failed to fetch: $error");
      rethrow;
    }
  }
}