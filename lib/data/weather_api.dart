import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/config/config.dart';

class WeatherApiClient {
  static const apiKey = Configuration.apiKey;
  static const days = Configuration.days;

  Future<Map<String, dynamic>> getWeatherData(String lat, String lon) async {
    final weatherUrl =
        'https://api.openweathermap.org/data/2.5/forecast/daily?lat=$lat&lon=$lon&cnt=$days&appid=$apiKey';
    final response = await http.get(Uri.parse(weatherUrl));
    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      return body;
    } else {
      throw Exception('Failed to get weather data');
    }
  }
}
