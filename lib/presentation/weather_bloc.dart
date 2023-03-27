import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/weather_model.dart';
import '../repository/weather_repository.dart';

part 'weather_event.dart';

part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc({required this.weatherRepository})
      : super(WeatherInitialState()) {
    on<WeatherRequestedEvent>((event, emit) async {
      emit(WeatherLoadingState());
      try {
        final weather = await weatherRepository.getWeather(event.city);
        emit(WeatherLoadedState(weather: weather));
      } catch (_) {
        emit(WeatherErrorState());
      }
    });

    on<WeatherRefreshRequestedEvent>((event, emit) async {
      try {
        final weather = await weatherRepository.getWeather(event.city);
        emit(WeatherLoadedState(weather: weather));
      } catch (_) {
        emit(state);
      }
    });
  }
}
