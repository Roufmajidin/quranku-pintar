import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class Endpoints {
  String? baseUrl;

  final String jsonFirebaseRealtimeDB =
      'https://sementara-264a2-default-rtdb.firebaseio.com/endpoint_injection.json';

  Endpoints() {
    // Initialize baseUrl in the constructor
    initializeBaseUrl();
  }

  Future<void> initializeBaseUrl() async {
    try {
      final response = await http.get(Uri.parse(jsonFirebaseRealtimeDB));

      if (response.statusCode == 200) {
        // Parse the JSON response and extract the baseUrl
        final data = json.decode(response.body);
        baseUrl = data;

        // Print or use the fetched baseUrl as needed
        // print('Fetched baseUrl from Firebase: $baseUrl');
      } else {
        // Handle the case when the server returns an error status code
        throw Exception(
            'Failed to load data. Status Code: ${response.statusCode}');
      }
    } catch (error) {
      // Handle network or other errors
      // print('Error: $error');
      throw Exception('Error fetching baseUrl: $error');
    }
  }
}
