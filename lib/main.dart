import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/presentation/bloc/weather/weather_bloc.dart';
import 'package:weather_app/presentation/ui/weather_search_page.dart';
import 'package:weather_app/repository/weather_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          BlocProvider(
            create: (_) => WeatherBloc(
              weatherRepository: WeatherRepository(WeatherApiClient()),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Weather App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const WeatherSearchPage(),
        ));
  }
}
