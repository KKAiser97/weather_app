import 'package:flutter/material.dart';

import '../../repository/entity/weather_entity.dart';

class WeatherCard extends StatelessWidget {

  final WeatherEntity weather;

  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white.withOpacity(0.3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            weather.cityName,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '${weather.temperature}°C',
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 10),
          Text(
            weather.description,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

