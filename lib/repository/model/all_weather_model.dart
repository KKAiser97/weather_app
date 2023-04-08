import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/repository/model/rain_model.dart';
import 'package:weather_app/repository/model/sys_model.dart';
import 'package:weather_app/repository/model/weather_model.dart';
import 'package:weather_app/repository/model/wind_model.dart';

import 'clouds_model.dart';
import 'coord_model.dart';
import 'detail_model.dart';

part 'all_weather_model.g.dart';

@JsonSerializable()
class AllWeather extends Equatable {
  final List<Weather> weather;
  final Coordinate coord;
  final Detail main;
  final int visibility;
  final Wind wind;
  final Rain rain;
  final Clouds clouds;
  final int dt;
  final Sys sys;

  const AllWeather(
    this.weather,
    this.coord,
    this.main,
    this.visibility,
    this.wind,
    this.rain,
    this.clouds,
    this.dt,
    this.sys,
  );

  factory AllWeather.fromJson(Map<String, dynamic> json) =>
      _$AllWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$AllWeatherToJson(this);

  @override
  List<Object?> get props => [weather,
    coord,
    main,
    visibility,
    wind,
    rain,
    clouds,
    dt,
    sys,];
}
