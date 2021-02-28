import 'package:moor_flutter/moor_flutter.dart';
import 'package:weather_app/database/dao/location_dao.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'converters.dart';

part 'appdatabase.g.dart';

@UseMoor(
    tables: [Locations],
    daos: [LocationDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
      path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 1;
}
