import 'package:weather_app/data/weather_repo_iplm.dart';
import 'package:weather_app/repository/model/forecast_model.dart';

import 'model/all_weather_model.dart';

class WeatherRepository {
  final WeatherApiImpl weatherApiImpl;

  WeatherRepository(this.weatherApiImpl);

  // Future<List<AllWeather>> getWeatherForecast(
  //     String lat, String lon, String apiKey);
  //
  // Future<AllWeather> getCurrentWeatherData(
  //     String lat, String lon, String apiKey);

Future<Forecast> getWeatherForecast(
        String lat, String lon, String apiKey) =>
    weatherApiImpl.getWeatherForecast(lat, lon, apiKey);

Future<AllWeather> getCurrentWeatherData(
        String lat, String lon, String apiKey) =>
    weatherApiImpl.getCurrentWeatherData(lat, lon, apiKey);
}
