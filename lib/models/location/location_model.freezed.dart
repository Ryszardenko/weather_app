// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

// ignore: unused_element
  _Location call(
      @JsonKey(name: 'Key') String key,
      @JsonKey(name: 'Type') String type,
      @JsonKey(name: 'Rank') int rank,
      @JsonKey(name: 'LocalizedName') String localizedName,
      @JsonKey(name: 'Country') Area country,
      @JsonKey(name: 'AdministrativeArea') Area administrativeArea) {
    return _Location(
      key,
      type,
      rank,
      localizedName,
      country,
      administrativeArea,
    );
  }

// ignore: unused_element
  Location fromJson(Map<String, Object> json) {
    return Location.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  @JsonKey(name: 'Key')
  String get key;
  @JsonKey(name: 'Type')
  String get type;
  @JsonKey(name: 'Rank')
  int get rank;
  @JsonKey(name: 'LocalizedName')
  String get localizedName;
  @JsonKey(name: 'Country')
  Area get country;
  @JsonKey(name: 'AdministrativeArea')
  Area get administrativeArea;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Key') String key,
      @JsonKey(name: 'Type') String type,
      @JsonKey(name: 'Rank') int rank,
      @JsonKey(name: 'LocalizedName') String localizedName,
      @JsonKey(name: 'Country') Area country,
      @JsonKey(name: 'AdministrativeArea') Area administrativeArea});

  $AreaCopyWith<$Res> get country;
  $AreaCopyWith<$Res> get administrativeArea;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object key = freezed,
    Object type = freezed,
    Object rank = freezed,
    Object localizedName = freezed,
    Object country = freezed,
    Object administrativeArea = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed ? _value.key : key as String,
      type: type == freezed ? _value.type : type as String,
      rank: rank == freezed ? _value.rank : rank as int,
      localizedName: localizedName == freezed
          ? _value.localizedName
          : localizedName as String,
      country: country == freezed ? _value.country : country as Area,
      administrativeArea: administrativeArea == freezed
          ? _value.administrativeArea
          : administrativeArea as Area,
    ));
  }

  @override
  $AreaCopyWith<$Res> get country {
    if (_value.country == null) {
      return null;
    }
    return $AreaCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }

  @override
  $AreaCopyWith<$Res> get administrativeArea {
    if (_value.administrativeArea == null) {
      return null;
    }
    return $AreaCopyWith<$Res>(_value.administrativeArea, (value) {
      return _then(_value.copyWith(administrativeArea: value));
    });
  }
}

/// @nodoc
abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Key') String key,
      @JsonKey(name: 'Type') String type,
      @JsonKey(name: 'Rank') int rank,
      @JsonKey(name: 'LocalizedName') String localizedName,
      @JsonKey(name: 'Country') Area country,
      @JsonKey(name: 'AdministrativeArea') Area administrativeArea});

  @override
  $AreaCopyWith<$Res> get country;
  @override
  $AreaCopyWith<$Res> get administrativeArea;
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then)
      : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

  @override
  $Res call({
    Object key = freezed,
    Object type = freezed,
    Object rank = freezed,
    Object localizedName = freezed,
    Object country = freezed,
    Object administrativeArea = freezed,
  }) {
    return _then(_Location(
      key == freezed ? _value.key : key as String,
      type == freezed ? _value.type : type as String,
      rank == freezed ? _value.rank : rank as int,
      localizedName == freezed ? _value.localizedName : localizedName as String,
      country == freezed ? _value.country : country as Area,
      administrativeArea == freezed
          ? _value.administrativeArea
          : administrativeArea as Area,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Location implements _Location {
  const _$_Location(
      @JsonKey(name: 'Key') this.key,
      @JsonKey(name: 'Type') this.type,
      @JsonKey(name: 'Rank') this.rank,
      @JsonKey(name: 'LocalizedName') this.localizedName,
      @JsonKey(name: 'Country') this.country,
      @JsonKey(name: 'AdministrativeArea') this.administrativeArea)
      : assert(key != null),
        assert(type != null),
        assert(rank != null),
        assert(localizedName != null),
        assert(country != null),
        assert(administrativeArea != null);

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationFromJson(json);

  @override
  @JsonKey(name: 'Key')
  final String key;
  @override
  @JsonKey(name: 'Type')
  final String type;
  @override
  @JsonKey(name: 'Rank')
  final int rank;
  @override
  @JsonKey(name: 'LocalizedName')
  final String localizedName;
  @override
  @JsonKey(name: 'Country')
  final Area country;
  @override
  @JsonKey(name: 'AdministrativeArea')
  final Area administrativeArea;

  @override
  String toString() {
    return 'Location(key: $key, type: $type, rank: $rank, localizedName: $localizedName, country: $country, administrativeArea: $administrativeArea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Location &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.rank, rank) ||
                const DeepCollectionEquality().equals(other.rank, rank)) &&
            (identical(other.localizedName, localizedName) ||
                const DeepCollectionEquality()
                    .equals(other.localizedName, localizedName)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.administrativeArea, administrativeArea) ||
                const DeepCollectionEquality()
                    .equals(other.administrativeArea, administrativeArea)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(rank) ^
      const DeepCollectionEquality().hash(localizedName) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(administrativeArea);

  @JsonKey(ignore: true)
  @override
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationToJson(this);
  }
}

abstract class _Location implements Location {
  const factory _Location(
          @JsonKey(name: 'Key') String key,
          @JsonKey(name: 'Type') String type,
          @JsonKey(name: 'Rank') int rank,
          @JsonKey(name: 'LocalizedName') String localizedName,
          @JsonKey(name: 'Country') Area country,
          @JsonKey(name: 'AdministrativeArea') Area administrativeArea) =
      _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  @JsonKey(name: 'Key')
  String get key;
  @override
  @JsonKey(name: 'Type')
  String get type;
  @override
  @JsonKey(name: 'Rank')
  int get rank;
  @override
  @JsonKey(name: 'LocalizedName')
  String get localizedName;
  @override
  @JsonKey(name: 'Country')
  Area get country;
  @override
  @JsonKey(name: 'AdministrativeArea')
  Area get administrativeArea;
  @override
  @JsonKey(ignore: true)
  _$LocationCopyWith<_Location> get copyWith;
}

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
class _$AreaTearOff {
  const _$AreaTearOff();

// ignore: unused_element
  _Area call(@JsonKey(name: 'ID') String id,
      @JsonKey(name: 'LocalizedName') String localizedName) {
    return _Area(
      id,
      localizedName,
    );
  }

// ignore: unused_element
  Area fromJson(Map<String, Object> json) {
    return Area.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Area = _$AreaTearOff();

/// @nodoc
mixin _$Area {
  @JsonKey(name: 'ID')
  String get id;
  @JsonKey(name: 'LocalizedName')
  String get localizedName;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AreaCopyWith<Area> get copyWith;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ID') String id,
      @JsonKey(name: 'LocalizedName') String localizedName});
}

/// @nodoc
class _$AreaCopyWithImpl<$Res> implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  final Area _value;
  // ignore: unused_field
  final $Res Function(Area) _then;

  @override
  $Res call({
    Object id = freezed,
    Object localizedName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      localizedName: localizedName == freezed
          ? _value.localizedName
          : localizedName as String,
    ));
  }
}

/// @nodoc
abstract class _$AreaCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$AreaCopyWith(_Area value, $Res Function(_Area) then) =
      __$AreaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ID') String id,
      @JsonKey(name: 'LocalizedName') String localizedName});
}

/// @nodoc
class __$AreaCopyWithImpl<$Res> extends _$AreaCopyWithImpl<$Res>
    implements _$AreaCopyWith<$Res> {
  __$AreaCopyWithImpl(_Area _value, $Res Function(_Area) _then)
      : super(_value, (v) => _then(v as _Area));

  @override
  _Area get _value => super._value as _Area;

  @override
  $Res call({
    Object id = freezed,
    Object localizedName = freezed,
  }) {
    return _then(_Area(
      id == freezed ? _value.id : id as String,
      localizedName == freezed ? _value.localizedName : localizedName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Area implements _Area {
  const _$_Area(@JsonKey(name: 'ID') this.id,
      @JsonKey(name: 'LocalizedName') this.localizedName)
      : assert(id != null),
        assert(localizedName != null);

  factory _$_Area.fromJson(Map<String, dynamic> json) =>
      _$_$_AreaFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final String id;
  @override
  @JsonKey(name: 'LocalizedName')
  final String localizedName;

  @override
  String toString() {
    return 'Area(id: $id, localizedName: $localizedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Area &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.localizedName, localizedName) ||
                const DeepCollectionEquality()
                    .equals(other.localizedName, localizedName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(localizedName);

  @JsonKey(ignore: true)
  @override
  _$AreaCopyWith<_Area> get copyWith =>
      __$AreaCopyWithImpl<_Area>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AreaToJson(this);
  }
}

abstract class _Area implements Area {
  const factory _Area(@JsonKey(name: 'ID') String id,
      @JsonKey(name: 'LocalizedName') String localizedName) = _$_Area;

  factory _Area.fromJson(Map<String, dynamic> json) = _$_Area.fromJson;

  @override
  @JsonKey(name: 'ID')
  String get id;
  @override
  @JsonKey(name: 'LocalizedName')
  String get localizedName;
  @override
  @JsonKey(ignore: true)
  _$AreaCopyWith<_Area> get copyWith;
}
