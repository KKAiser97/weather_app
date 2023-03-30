import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/repository/model/temp_model.dart';
import 'package:weather_app/repository/model/weather_model.dart';

part 'all_weather_model.g.dart';

@JsonSerializable()
class AllWeather {
  final int sunrise;
  final int sunset;
  final Temperature temp;
  final int pressure;
  final int humidity;
  final List<Weather> weather;
  final double speed;
  final int deg;
  final double gust;
  final int clouds;
  final double pop;
  final double rain;

  AllWeather(
    this.sunrise,
    this.sunset,
    this.temp,
    this.pressure,
    this.humidity,
    this.weather,
    this.speed,
    this.deg,
    this.gust,
    this.clouds,
    this.pop,
    this.rain,
  );

  factory AllWeather.fromJson(Map<String, dynamic> json) =>
      _$AllWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$AllWeatherToJson(this);
}
