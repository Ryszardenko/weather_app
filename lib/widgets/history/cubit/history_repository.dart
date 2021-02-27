import 'package:weather_app/database/appdatabase.dart';

class SearchHistoryRepository {
  const SearchHistoryRepository(this._database);

  final AppDatabase _database;

  Stream<List<LocationEntity>> watchRecentlySearchedLocations() =>
      _database.locationDao.watchRecentlySearchedLocations();
}
