import 'package:json_annotation/json_annotation.dart';

import 'all_weather_model.dart';
import 'city_model.dart';

part 'data_model.g.dart';

@JsonSerializable()
class Data {
  final City city;
  final String cod;
  final double message;
  final int cnt;
  final List<AllWeather> allWeather;

  Data(
    this.city,
    this.cod,
    this.message,
    this.cnt,
    this.allWeather,
  );

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
