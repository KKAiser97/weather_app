import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/config/config.dart';
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
        List<WeatherEntity> weatherEntity =
            await getWeatherForecastOfCurrentPosition();
        emit(WeatherLoadedState(weather: weatherEntity));
      } catch (_) {
        emit(WeatherErrorState());
      }
    });

    on<WeatherRefreshRequestedEvent>((event, emit) async {
      try {
        List<WeatherEntity> weatherEntity =
            await getWeatherForecastOfCurrentPosition();
        emit(WeatherLoadedState(weather: weatherEntity));
      } catch (_) {
        emit(state);
      }
    });
  }

  Future<List<WeatherEntity>> getWeatherForecastOfCurrentPosition() async {
    final position = await LocationService.getCurrentLocation();
    final weather = await weatherRepository.getWeatherForecast(
      position.latitude.toString(),
      position.longitude.toString(),
      Configuration.apiKey,
    );
    print(weather);
    final weatherEntity = weather.listWeather
        .map((e) => WeatherEntity(
              temperature: e.main.temp,
              description: e.weather.first.description,
              iconUrl: e.weather.first.icon,
            ))
        .toList();

    return weatherEntity;
  }
}
