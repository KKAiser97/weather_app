import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'all_weather_model.dart';
import 'city_model.dart';

part 'forecast_model.g.dart';

@JsonSerializable()
class Forecast extends Equatable {
  final String cod;
  final int message;
  final int cnt;
  final List<AllWeather> listWeather;
  final City city;

  const Forecast(
    this.cod,
    this.message,
    this.cnt,
    this.listWeather,
    this.city,
  );

  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [cod,
    message,
    cnt,
    listWeather,
    city,];
}
