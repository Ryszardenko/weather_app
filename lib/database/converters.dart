import 'dart:convert';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:weather_app/models/location/location_model.dart';

class AreaConverter extends TypeConverter<Area, String> {
  const AreaConverter();

  @override
  Area mapToDart(String fromDb) {
    return fromDb == null ? null : Area.fromJson(jsonDecode(fromDb));
  }

  @override
  String mapToSql(Area value) {
    return value == null ? null : jsonEncode(value);
  }
}
