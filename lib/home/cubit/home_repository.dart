import 'package:weather_app/database/appdatabase.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/services/api_service.dart';

class HomeRepository {
  const HomeRepository(this._database);

  final AppDatabase _database;

  Future<List<Location>> fetchCities(String cityName) =>
      ApiService().fetchCities(cityName);

  Future<void> insertLocation(Location location) =>
      _database.locationDao.insertLocation(location);
}
