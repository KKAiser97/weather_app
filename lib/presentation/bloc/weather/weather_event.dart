part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class WeatherRequestedEvent extends WeatherEvent {
  final String city;

  const WeatherRequestedEvent({required this.city});

  @override
  List<Object> get props => [city];
}

class WeatherRefreshRequestedEvent extends WeatherEvent {
  final String city;

  const WeatherRefreshRequestedEvent({required this.city});

  @override
  List<Object> get props => [city];
}
