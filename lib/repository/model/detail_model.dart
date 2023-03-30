import 'package:json_annotation/json_annotation.dart';

part 'detail_model.g.dart';

@JsonSerializable()
class Detail {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;
  final int seaLevel;
  final int grndLevel;

  Detail(
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.seaLevel,
    this.grndLevel,
  );

  factory Detail.fromJson(Map<String, dynamic> json) =>
      _$DetailFromJson(json);

  Map<String, dynamic> toJson() => _$DetailToJson(this);
}
