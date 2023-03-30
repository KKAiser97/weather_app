import 'package:json_annotation/json_annotation.dart';

part 'temp_model.g.dart';

@JsonSerializable()
class Temperature {
  final double day;
  final double min;
  final double max;
  final double night;
  final double eve;
  final double morn;

  Temperature(
    this.day,
    this.min,
    this.max,
    this.night,
    this.eve,
    this.morn,
  );

  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);

  Map<String, dynamic> toJson() => _$TemperatureToJson(this);
}
