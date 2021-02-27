import 'package:weather_app/models/weather/current/current_weather_model.dart';
import 'package:weather_app/services/api_service.dart';

class LocationRepository {
  const LocationRepository();

  Future<CurrentWeather> fetchCurrentWeather(String locationKey) =>
      ApiService().fetchCurrentWeather(locationKey);
}
