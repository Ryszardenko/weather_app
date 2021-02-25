import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/services/api_service.dart';

class HomeRepository {
  const HomeRepository();

  Future<List<Location>> fetchCities({String cityName}) async =>
      await ApiService().fetchCities(cityName: cityName);
}
