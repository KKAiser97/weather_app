import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'coord_model.dart';

part 'city_model.g.dart';

@JsonSerializable()
class City extends Equatable {
  final int id;
  final String name;
  final Coordinate coord;
  final String country;
  final int population;
  final int timezone;

  const City(
    this.id,
    this.name,
    this.coord,
    this.country,
    this.population,
    this.timezone,
  );

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        coord,
        country,
        population,
        timezone,
      ];
}
