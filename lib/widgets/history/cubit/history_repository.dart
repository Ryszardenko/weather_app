import 'package:weather_app/database/appdatabase.dart';

class HistoryRepository {
  const HistoryRepository(this._database);

  final AppDatabase _database;

  Stream<List<LocationEntity>> watchRecentlySearchedLocations() =>
      _database.locationDao.watchRecentlySearchedLocations();

  Future<void> clearHistory() => _database.locationDao.dropTable();
}
