import '../model/weather_model.dart';

abstract class WeatherRepository {
  Future<Weather> getWeather(String city);
}