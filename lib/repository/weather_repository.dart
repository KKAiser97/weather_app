import 'package:weather_app/repository/entity/weather_entity.dart';

import '../data/weather_api.dart';
import 'model/all_weather_model.dart';
import 'model/weather_model.dart';

class WeatherRepository {
  final WeatherApiClient weatherApiClient;

  WeatherRepository(this.weatherApiClient);
  Future<List<AllWeather>> getWeather(String lat, String lon) => weatherApiClient.getWeatherData(lat, lon);
}