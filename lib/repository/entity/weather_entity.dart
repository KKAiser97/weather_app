class WeatherEntity {
  final String cityName;
  final double temperature;
  final String description;
  final String iconUrl;

  WeatherEntity({
    this.cityName = "",
    required this.temperature,
    required this.description,
    required this.iconUrl,
  });
}
