import 'package:moor_flutter/moor_flutter.dart';
import 'package:weather_app/database/appdatabase.dart';
import 'package:weather_app/database/converters.dart';
import 'package:weather_app/models/location/location_model.dart';

part 'location_dao.g.dart';

@UseDao(tables: [Locations])
class LocationDao extends DatabaseAccessor<AppDatabase>
    with _$LocationDaoMixin {
  final AppDatabase db;

  LocationDao(this.db) : super(db);

  Future<void> insertLocation(Location location) {
    return into(locations).insert(
        location.toEntity().copyWith(searchedTime: DateTime.now().toString()),
        mode: InsertMode.insertOrReplace);
  }

  Stream<List<LocationEntity>> watchRecentlySearchedLocations() {
    return (select(locations)
          ..orderBy([(tbl) => OrderingTerm.desc(tbl.searchedTime)])
          ..limit(5))
        .watch();
  }
}

@DataClassName('LocationEntity')
class Locations extends Table {
  @override
  Set<Column> get primaryKey => {key};

  @JsonKey('Key')
  TextColumn get key => text()();

  @JsonKey('Type')
  TextColumn get type => text()();

  @JsonKey('LocalizedName')
  TextColumn get localizedName => text()();

  @JsonKey('Country')
  TextColumn get country => text().map(const AreaConverter())();

  @JsonKey('AdministrativeArea')
  TextColumn get administrativeArea => text().map(const AreaConverter())();

  TextColumn get searchedTime => text()();
}

extension LocationExtension on Location {
  LocationEntity toEntity() {
    return LocationEntity.fromJson(toJson());
  }
}

extension LocationEntityExtension on LocationEntity {
  Location toLocation() {
    return Location.fromJson(toJson());
  }
}
