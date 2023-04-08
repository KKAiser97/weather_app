// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forecast _$ForecastFromJson(Map<String, dynamic> json) => Forecast(
      json['cod'] as String,
      json['message'] as int,
      json['cnt'] as int,
      (json['listWeather'] as List<dynamic>)
          .map((e) => AllWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
      City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForecastToJson(Forecast instance) => <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'listWeather': instance.listWeather,
      'city': instance.city,
    };
