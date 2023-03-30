class City {
  final double latitude;
  final double longitude;
  /// The altitude of the position in meters above sea level.
  final double altitude;

  City({
    required this.latitude,
    required this.longitude,
    this.altitude = 0.0,
  });
}