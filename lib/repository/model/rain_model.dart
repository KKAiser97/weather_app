import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rain_model.g.dart';

@JsonSerializable()
class Rain extends Equatable {
  final double d1h;

  const Rain(this.d1h);

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);

  Map<String, dynamic> toJson() => _$RainToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [d1h];
}