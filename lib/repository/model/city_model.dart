import 'package:json_annotation/json_annotation.dart';

import 'coord_model.dart';

part 'city_model.g.dart';

@JsonSerializable()
class City {
  final int id;
  final String name;
  final Coordinate coord;
  final String country;
  final int population;
  final int timezone;

  City(
    this.id,
    this.name,
    this.coord,
    this.country,
    this.population,
    this.timezone,
  );

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}
