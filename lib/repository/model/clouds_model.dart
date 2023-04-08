import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'clouds_model.g.dart';

@JsonSerializable()
class Clouds extends Equatable {
  final int all;

  const Clouds(this.all);

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);

  Map<String, dynamic> toJson() => _$CloudsToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [all];
}