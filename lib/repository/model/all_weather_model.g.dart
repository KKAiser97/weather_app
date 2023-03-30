// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllWeather _$AllWeatherFromJson(Map<String, dynamic> json) => AllWeather(
      json['sunrise'] as int,
      json['sunset'] as int,
      Temperature.fromJson(json['temp'] as Map<String, dynamic>),
      json['pressure'] as int,
      json['humidity'] as int,
      (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['speed'] as num).toDouble(),
      json['deg'] as int,
      (json['gust'] as num).toDouble(),
      json['clouds'] as int,
      (json['pop'] as num).toDouble(),
      (json['rain'] as num).toDouble(),
    );

Map<String, dynamic> _$AllWeatherToJson(AllWeather instance) =>
    <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'weather': instance.weather,
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
      'clouds': instance.clouds,
      'pop': instance.pop,
      'rain': instance.rain,
    };
