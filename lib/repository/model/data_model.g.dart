// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      City.fromJson(json['city'] as Map<String, dynamic>),
      json['cod'] as String,
      (json['message'] as num).toDouble(),
      json['cnt'] as int,
      (json['allWeather'] as List<dynamic>)
          .map((e) => AllWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'city': instance.city,
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'allWeather': instance.allWeather,
    };
