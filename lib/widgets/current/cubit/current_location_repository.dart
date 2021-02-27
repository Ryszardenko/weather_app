import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/models/weather/current/current_weather_model.dart';
import 'package:weather_app/services/api_service.dart';

class CurrentLocationRepository {
  Future<CurrentWeather> fetchCurrentWeather(String locationKey) =>
      ApiService().fetchCurrentWeather(locationKey);

  Future<Location> fetchCurrentLocation(double latitude, double longitude) =>
      ApiService().fetchLocation(latitude, longitude);
}
