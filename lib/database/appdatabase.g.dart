// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appdatabase.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class LocationEntity extends DataClass implements Insertable<LocationEntity> {
  final String key;
  final String type;
  final String localizedName;
  final Area country;
  final Area administrativeArea;
  final String searchedTime;
  LocationEntity(
      {@required this.key,
      @required this.type,
      @required this.localizedName,
      @required this.country,
      @required this.administrativeArea,
      @required this.searchedTime});
  factory LocationEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return LocationEntity(
      key: stringType.mapFromDatabaseResponse(data['${effectivePrefix}key']),
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
      localizedName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}localized_name']),
      country: $LocationsTable.$converter0.mapToDart(stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}country'])),
      administrativeArea: $LocationsTable.$converter1.mapToDart(
          stringType.mapFromDatabaseResponse(
              data['${effectivePrefix}administrative_area'])),
      searchedTime: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}searched_time']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || key != null) {
      map['key'] = Variable<String>(key);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || localizedName != null) {
      map['localized_name'] = Variable<String>(localizedName);
    }
    if (!nullToAbsent || country != null) {
      final converter = $LocationsTable.$converter0;
      map['country'] = Variable<String>(converter.mapToSql(country));
    }
    if (!nullToAbsent || administrativeArea != null) {
      final converter = $LocationsTable.$converter1;
      map['administrative_area'] =
          Variable<String>(converter.mapToSql(administrativeArea));
    }
    if (!nullToAbsent || searchedTime != null) {
      map['searched_time'] = Variable<String>(searchedTime);
    }
    return map;
  }

  LocationsCompanion toCompanion(bool nullToAbsent) {
    return LocationsCompanion(
      key: key == null && nullToAbsent ? const Value.absent() : Value(key),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      localizedName: localizedName == null && nullToAbsent
          ? const Value.absent()
          : Value(localizedName),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      administrativeArea: administrativeArea == null && nullToAbsent
          ? const Value.absent()
          : Value(administrativeArea),
      searchedTime: searchedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(searchedTime),
    );
  }

  factory LocationEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return LocationEntity(
      key: serializer.fromJson<String>(json['Key']),
      type: serializer.fromJson<String>(json['Type']),
      localizedName: serializer.fromJson<String>(json['LocalizedName']),
      country: serializer.fromJson<Area>(json['Country']),
      administrativeArea: serializer.fromJson<Area>(json['AdministrativeArea']),
      searchedTime: serializer.fromJson<String>(json['searchedTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'Key': serializer.toJson<String>(key),
      'Type': serializer.toJson<String>(type),
      'LocalizedName': serializer.toJson<String>(localizedName),
      'Country': serializer.toJson<Area>(country),
      'AdministrativeArea': serializer.toJson<Area>(administrativeArea),
      'searchedTime': serializer.toJson<String>(searchedTime),
    };
  }

  LocationEntity copyWith(
          {String key,
          String type,
          String localizedName,
          Area country,
          Area administrativeArea,
          String searchedTime}) =>
      LocationEntity(
        key: key ?? this.key,
        type: type ?? this.type,
        localizedName: localizedName ?? this.localizedName,
        country: country ?? this.country,
        administrativeArea: administrativeArea ?? this.administrativeArea,
        searchedTime: searchedTime ?? this.searchedTime,
      );
  @override
  String toString() {
    return (StringBuffer('LocationEntity(')
          ..write('key: $key, ')
          ..write('type: $type, ')
          ..write('localizedName: $localizedName, ')
          ..write('country: $country, ')
          ..write('administrativeArea: $administrativeArea, ')
          ..write('searchedTime: $searchedTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      key.hashCode,
      $mrjc(
          type.hashCode,
          $mrjc(
              localizedName.hashCode,
              $mrjc(
                  country.hashCode,
                  $mrjc(
                      administrativeArea.hashCode, searchedTime.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is LocationEntity &&
          other.key == this.key &&
          other.type == this.type &&
          other.localizedName == this.localizedName &&
          other.country == this.country &&
          other.administrativeArea == this.administrativeArea &&
          other.searchedTime == this.searchedTime);
}

class LocationsCompanion extends UpdateCompanion<LocationEntity> {
  final Value<String> key;
  final Value<String> type;
  final Value<String> localizedName;
  final Value<Area> country;
  final Value<Area> administrativeArea;
  final Value<String> searchedTime;
  const LocationsCompanion({
    this.key = const Value.absent(),
    this.type = const Value.absent(),
    this.localizedName = const Value.absent(),
    this.country = const Value.absent(),
    this.administrativeArea = const Value.absent(),
    this.searchedTime = const Value.absent(),
  });
  LocationsCompanion.insert({
    @required String key,
    @required String type,
    @required String localizedName,
    @required Area country,
    @required Area administrativeArea,
    @required String searchedTime,
  })  : key = Value(key),
        type = Value(type),
        localizedName = Value(localizedName),
        country = Value(country),
        administrativeArea = Value(administrativeArea),
        searchedTime = Value(searchedTime);
  static Insertable<LocationEntity> custom({
    Expression<String> key,
    Expression<String> type,
    Expression<String> localizedName,
    Expression<String> country,
    Expression<String> administrativeArea,
    Expression<String> searchedTime,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (type != null) 'type': type,
      if (localizedName != null) 'localized_name': localizedName,
      if (country != null) 'country': country,
      if (administrativeArea != null) 'administrative_area': administrativeArea,
      if (searchedTime != null) 'searched_time': searchedTime,
    });
  }

  LocationsCompanion copyWith(
      {Value<String> key,
      Value<String> type,
      Value<String> localizedName,
      Value<Area> country,
      Value<Area> administrativeArea,
      Value<String> searchedTime}) {
    return LocationsCompanion(
      key: key ?? this.key,
      type: type ?? this.type,
      localizedName: localizedName ?? this.localizedName,
      country: country ?? this.country,
      administrativeArea: administrativeArea ?? this.administrativeArea,
      searchedTime: searchedTime ?? this.searchedTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (localizedName.present) {
      map['localized_name'] = Variable<String>(localizedName.value);
    }
    if (country.present) {
      final converter = $LocationsTable.$converter0;
      map['country'] = Variable<String>(converter.mapToSql(country.value));
    }
    if (administrativeArea.present) {
      final converter = $LocationsTable.$converter1;
      map['administrative_area'] =
          Variable<String>(converter.mapToSql(administrativeArea.value));
    }
    if (searchedTime.present) {
      map['searched_time'] = Variable<String>(searchedTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocationsCompanion(')
          ..write('key: $key, ')
          ..write('type: $type, ')
          ..write('localizedName: $localizedName, ')
          ..write('country: $country, ')
          ..write('administrativeArea: $administrativeArea, ')
          ..write('searchedTime: $searchedTime')
          ..write(')'))
        .toString();
  }
}

class $LocationsTable extends Locations
    with TableInfo<$LocationsTable, LocationEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $LocationsTable(this._db, [this._alias]);
  final VerificationMeta _keyMeta = const VerificationMeta('key');
  GeneratedTextColumn _key;
  @override
  GeneratedTextColumn get key => _key ??= _constructKey();
  GeneratedTextColumn _constructKey() {
    return GeneratedTextColumn(
      'key',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _localizedNameMeta =
      const VerificationMeta('localizedName');
  GeneratedTextColumn _localizedName;
  @override
  GeneratedTextColumn get localizedName =>
      _localizedName ??= _constructLocalizedName();
  GeneratedTextColumn _constructLocalizedName() {
    return GeneratedTextColumn(
      'localized_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _countryMeta = const VerificationMeta('country');
  GeneratedTextColumn _country;
  @override
  GeneratedTextColumn get country => _country ??= _constructCountry();
  GeneratedTextColumn _constructCountry() {
    return GeneratedTextColumn(
      'country',
      $tableName,
      false,
    );
  }

  final VerificationMeta _administrativeAreaMeta =
      const VerificationMeta('administrativeArea');
  GeneratedTextColumn _administrativeArea;
  @override
  GeneratedTextColumn get administrativeArea =>
      _administrativeArea ??= _constructAdministrativeArea();
  GeneratedTextColumn _constructAdministrativeArea() {
    return GeneratedTextColumn(
      'administrative_area',
      $tableName,
      false,
    );
  }

  final VerificationMeta _searchedTimeMeta =
      const VerificationMeta('searchedTime');
  GeneratedTextColumn _searchedTime;
  @override
  GeneratedTextColumn get searchedTime =>
      _searchedTime ??= _constructSearchedTime();
  GeneratedTextColumn _constructSearchedTime() {
    return GeneratedTextColumn(
      'searched_time',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [key, type, localizedName, country, administrativeArea, searchedTime];
  @override
  $LocationsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'locations';
  @override
  final String actualTableName = 'locations';
  @override
  VerificationContext validateIntegrity(Insertable<LocationEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key'], _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type'], _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('localized_name')) {
      context.handle(
          _localizedNameMeta,
          localizedName.isAcceptableOrUnknown(
              data['localized_name'], _localizedNameMeta));
    } else if (isInserting) {
      context.missing(_localizedNameMeta);
    }
    context.handle(_countryMeta, const VerificationResult.success());
    context.handle(_administrativeAreaMeta, const VerificationResult.success());
    if (data.containsKey('searched_time')) {
      context.handle(
          _searchedTimeMeta,
          searchedTime.isAcceptableOrUnknown(
              data['searched_time'], _searchedTimeMeta));
    } else if (isInserting) {
      context.missing(_searchedTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  LocationEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return LocationEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $LocationsTable createAlias(String alias) {
    return $LocationsTable(_db, alias);
  }

  static TypeConverter<Area, String> $converter0 = const AreaConverter();
  static TypeConverter<Area, String> $converter1 = const AreaConverter();
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $LocationsTable _locations;
  $LocationsTable get locations => _locations ??= $LocationsTable(this);
  LocationDao _locationDao;
  LocationDao get locationDao =>
      _locationDao ??= LocationDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [locations];
}
