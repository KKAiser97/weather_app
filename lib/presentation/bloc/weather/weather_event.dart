part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class WeatherRequestedEvent extends WeatherEvent {
  const WeatherRequestedEvent();
}

class WeatherRefreshRequestedEvent extends WeatherEvent {
  const WeatherRefreshRequestedEvent();
}
