import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/repository/entity/weather_entity.dart';

import '../../../data/location_service.dart';
import '../../../repository/weather_repository.dart';

part 'weather_event.dart';

part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc({required this.weatherRepository})
      : super(WeatherInitialState()) {
    on<WeatherRequestedEvent>((event, emit) async {
      emit(WeatherLoadingState());
      try {
        List<WeatherEntity> weatherEntity = await getWeatherOfCurrentPosition();
        emit(WeatherLoadedState(weather: weatherEntity));
      } catch (_) {
        emit(WeatherErrorState());
      }
    });

    on<WeatherRefreshRequestedEvent>((event, emit) async {
      try {
        List<WeatherEntity> weatherEntity = await getWeatherOfCurrentPosition();
        emit(WeatherLoadedState(weather: weatherEntity));
      } catch (_) {
        emit(state);
      }
    });
  }

  Future<List<WeatherEntity>> getWeatherOfCurrentPosition() async {
    final position = await LocationService.getCurrentLocation();
    final weather = await weatherRepository.getWeather(
        position.latitude.toString(), position.longitude.toString());
    final weatherEntity = weather
        .map((e) => WeatherEntity(
              temperature: e.temp.day,
              description: e.weather.first.description,
              iconUrl: e.weather.first.icon,
            ))
        .toList();
    return weatherEntity;
  }
}
