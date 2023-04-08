// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllWeather _$AllWeatherFromJson(Map<String, dynamic> json) => AllWeather(
      (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      Coordinate.fromJson(json['coord'] as Map<String, dynamic>),
      Detail.fromJson(json['main'] as Map<String, dynamic>),
      json['visibility'] as int,
      Wind.fromJson(json['wind'] as Map<String, dynamic>),
      Rain.fromJson(json['rain'] as Map<String, dynamic>),
      Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      json['dt'] as int,
      Sys.fromJson(json['sys'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AllWeatherToJson(AllWeather instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'coord': instance.coord,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'rain': instance.rain,
      'clouds': instance.clouds,
      'dt': instance.dt,
      'sys': instance.sys,
    };
