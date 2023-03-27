import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/config/config.dart';

class WeatherApiC {
  static const apiKey = Configuration.apiKey;

  Future<Map<String, dynamic>> getWeatherData(String city) async {
    final weatherUrl =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';
    final response = await http.get(Uri.parse(weatherUrl));
    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      return body;
    } else {
      throw Exception('Failed to get weather data');
    }
  }
}
