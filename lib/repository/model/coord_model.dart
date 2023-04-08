import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'coord_model.g.dart';

@JsonSerializable()
class Coordinate extends Equatable {
  final double latitude;
  final double longitude;

  const Coordinate({
    required this.latitude,
    required this.longitude,
  });

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinateToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [latitude, longitude];
}
