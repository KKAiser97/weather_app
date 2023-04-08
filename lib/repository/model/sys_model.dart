import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sys_model.g.dart';

@JsonSerializable()
class Sys extends Equatable {
  final int type;
  final int id;
  final String country;
  final int sunrise;
  final int sunset;

  const Sys(
    this.type,
    this.id,
    this.country,
    this.sunrise,
    this.sunset,
  );

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);

  Map<String, dynamic> toJson() => _$SysToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [
        type,
        id,
        country,
        sunrise,
        sunset,
      ];
}
