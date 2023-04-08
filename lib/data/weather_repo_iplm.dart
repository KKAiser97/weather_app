import 'package:dio/dio.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/repository/model/all_weather_model.dart';
import 'package:weather_app/repository/model/forecast_model.dart';

class WeatherApiImpl {
  final WeatherApiClient weatherApiClient;

  WeatherApiImpl({required this.weatherApiClient});

  Future<Forecast> getWeatherForecast(
      String lat, String lon, String apiKey) async {
    try {
      final response = await weatherApiClient.getForecastData(lat, lon, apiKey);
      print(response);
      return response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Future<AllWeather> getCurrentWeatherData(
      String lat, String lon, String apiKey) async {
    try {
      final response =
          await weatherApiClient.getCurrentWeatherData(lat, lon, apiKey);
      return response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}
