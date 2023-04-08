import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:weather_app/config/config.dart';
import 'package:weather_app/repository/model/all_weather_model.dart';

import '../repository/model/forecast_model.dart';

part 'weather_api.g.dart';

@RestApi(baseUrl: 'https://api.openweathermap.org/data/2.5/')
abstract class WeatherApiClient {
  // static const apiKey = Configuration.apiKey;
  // static const days = Configuration.days;

  factory WeatherApiClient(Dio dio, {String baseUrl}) = _WeatherApiClient;

  @GET('forecast')
  Future<Forecast> getForecastData(
    @Query('lat') String lat,
    @Query('lon') String lon,
    @Query('appid') String apiKey,
  );

  @GET('weather')
  Future<AllWeather> getCurrentWeatherData(
    @Query('lat') String lat,
    @Query('lon') String lon,
    @Query('appid') String apiKey,
  );

// Future<List<AllWeather>> getForecastData(String lat, String lon) async {
//   final fiveDayForecastUrl =
//       'https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon&appid=$apiKey';
//   final response = await http.get(Uri.parse(fiveDayForecastUrl));
//   if (response.statusCode == 200) {
//     final body = json.decode(response.body);
//     return body;
//   } else {
//     throw Exception('Failed to get weather data');
//   }
// }
}
