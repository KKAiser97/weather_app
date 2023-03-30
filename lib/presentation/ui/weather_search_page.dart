import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/weather/weather_bloc.dart';
import '../common/weather_card.dart';

class WeatherSearchPage extends StatefulWidget {
  const WeatherSearchPage({Key? key}) : super(key: key);

  @override
  State<WeatherSearchPage> createState() => _WeatherSearchPageState();
}

class _WeatherSearchPageState extends State<WeatherSearchPage> {
  final _cityTextController = TextEditingController();
  late WeatherBloc _weatherBloc;

  @override
  void initState() {
    super.initState();
    _weatherBloc = context.read<WeatherBloc>();
    _weatherBloc.add(const WeatherRequestedEvent());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Weather App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            /// may add search location later
            // TextField(
            //   controller: _cityTextController,
            //   decoration: InputDecoration(
            //     labelText: 'Enter city name',
            //     suffixIcon: IconButton(
            //       icon: const Icon(Icons.search),
            //       onPressed: () {
            //         _weatherBloc.add(
            //           WeatherRequestedEvent(city: _cityTextController.text),
            //         );
            //       },
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 10),
            BlocBuilder<WeatherBloc, WeatherState>(
              builder: (context, state) {
                if (state is WeatherInitialState) {
                  return const Text('Please enter a city name');
                } else if (state is WeatherLoadingState) {
                  return const CircularProgressIndicator();
                } else if (state is WeatherLoadedState) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: state.weather.length,
                      itemBuilder: (context, index) {
                        final forecast = state.weather[index];
                        return WeatherCard(weather: forecast);
                      },
                    ),
                  );
                } else if (state is WeatherErrorState) {
                  return const Text('Failed to fetch weather data');
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
