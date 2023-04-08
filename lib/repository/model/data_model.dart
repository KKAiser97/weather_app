import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'all_weather_model.dart';
import 'city_model.dart';

part 'data_model.g.dart';

@JsonSerializable()
class Data extends Equatable {
  final City city;
  final String cod;
  final double message;
  final int cnt;
  final List<AllWeather> allWeather;

  const Data(
    this.city,
    this.cod,
    this.message,
    this.cnt,
    this.allWeather,
  );

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [
        city,
        cod,
        message,
        cnt,
        allWeather,
      ];
}
