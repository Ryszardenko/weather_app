// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'current_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _CurrentWeather.fromJson(json);
}

/// @nodoc
class _$CurrentWeatherTearOff {
  const _$CurrentWeatherTearOff();

// ignore: unused_element
  _CurrentWeather call(
      @JsonKey(name: 'WeatherText') String weatherText,
      @JsonKey(name: 'WeatherIcon') int weatherIcon,
      @JsonKey(name: 'Temperature') Units temperature,
      @JsonKey(name: 'RealFeelTemperature') Units realFeelTemperature,
      @JsonKey(name: 'RelativeHumidity') int relativeHumidity,
      @JsonKey(name: 'Wind') Wind wind,
      @JsonKey(name: 'Visibility') Units visibility,
      @JsonKey(name: 'CloudCover') int cloudCover,
      @JsonKey(name: 'Pressure') Units pressure,
      @JsonKey(name: 'MobileLink') String mobileLink) {
    return _CurrentWeather(
      weatherText,
      weatherIcon,
      temperature,
      realFeelTemperature,
      relativeHumidity,
      wind,
      visibility,
      cloudCover,
      pressure,
      mobileLink,
    );
  }

// ignore: unused_element
  CurrentWeather fromJson(Map<String, Object> json) {
    return CurrentWeather.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CurrentWeather = _$CurrentWeatherTearOff();

/// @nodoc
mixin _$CurrentWeather {
  @JsonKey(name: 'WeatherText')
  String get weatherText;
  @JsonKey(name: 'WeatherIcon')
  int get weatherIcon;
  @JsonKey(name: 'Temperature')
  Units get temperature;
  @JsonKey(name: 'RealFeelTemperature')
  Units get realFeelTemperature;
  @JsonKey(name: 'RelativeHumidity')
  int get relativeHumidity;
  @JsonKey(name: 'Wind')
  Wind get wind;
  @JsonKey(name: 'Visibility')
  Units get visibility;
  @JsonKey(name: 'CloudCover')
  int get cloudCover;
  @JsonKey(name: 'Pressure')
  Units get pressure;
  @JsonKey(name: 'MobileLink')
  String get mobileLink;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'WeatherText') String weatherText,
      @JsonKey(name: 'WeatherIcon') int weatherIcon,
      @JsonKey(name: 'Temperature') Units temperature,
      @JsonKey(name: 'RealFeelTemperature') Units realFeelTemperature,
      @JsonKey(name: 'RelativeHumidity') int relativeHumidity,
      @JsonKey(name: 'Wind') Wind wind,
      @JsonKey(name: 'Visibility') Units visibility,
      @JsonKey(name: 'CloudCover') int cloudCover,
      @JsonKey(name: 'Pressure') Units pressure,
      @JsonKey(name: 'MobileLink') String mobileLink});

  $UnitsCopyWith<$Res> get temperature;
  $UnitsCopyWith<$Res> get realFeelTemperature;
  $WindCopyWith<$Res> get wind;
  $UnitsCopyWith<$Res> get visibility;
  $UnitsCopyWith<$Res> get pressure;
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  final CurrentWeather _value;
  // ignore: unused_field
  final $Res Function(CurrentWeather) _then;

  @override
  $Res call({
    Object weatherText = freezed,
    Object weatherIcon = freezed,
    Object temperature = freezed,
    Object realFeelTemperature = freezed,
    Object relativeHumidity = freezed,
    Object wind = freezed,
    Object visibility = freezed,
    Object cloudCover = freezed,
    Object pressure = freezed,
    Object mobileLink = freezed,
  }) {
    return _then(_value.copyWith(
      weatherText:
          weatherText == freezed ? _value.weatherText : weatherText as String,
      weatherIcon:
          weatherIcon == freezed ? _value.weatherIcon : weatherIcon as int,
      temperature:
          temperature == freezed ? _value.temperature : temperature as Units,
      realFeelTemperature: realFeelTemperature == freezed
          ? _value.realFeelTemperature
          : realFeelTemperature as Units,
      relativeHumidity: relativeHumidity == freezed
          ? _value.relativeHumidity
          : relativeHumidity as int,
      wind: wind == freezed ? _value.wind : wind as Wind,
      visibility:
          visibility == freezed ? _value.visibility : visibility as Units,
      cloudCover: cloudCover == freezed ? _value.cloudCover : cloudCover as int,
      pressure: pressure == freezed ? _value.pressure : pressure as Units,
      mobileLink:
          mobileLink == freezed ? _value.mobileLink : mobileLink as String,
    ));
  }

  @override
  $UnitsCopyWith<$Res> get temperature {
    if (_value.temperature == null) {
      return null;
    }
    return $UnitsCopyWith<$Res>(_value.temperature, (value) {
      return _then(_value.copyWith(temperature: value));
    });
  }

  @override
  $UnitsCopyWith<$Res> get realFeelTemperature {
    if (_value.realFeelTemperature == null) {
      return null;
    }
    return $UnitsCopyWith<$Res>(_value.realFeelTemperature, (value) {
      return _then(_value.copyWith(realFeelTemperature: value));
    });
  }

  @override
  $WindCopyWith<$Res> get wind {
    if (_value.wind == null) {
      return null;
    }
    return $WindCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value));
    });
  }

  @override
  $UnitsCopyWith<$Res> get visibility {
    if (_value.visibility == null) {
      return null;
    }
    return $UnitsCopyWith<$Res>(_value.visibility, (value) {
      return _then(_value.copyWith(visibility: value));
    });
  }

  @override
  $UnitsCopyWith<$Res> get pressure {
    if (_value.pressure == null) {
      return null;
    }
    return $UnitsCopyWith<$Res>(_value.pressure, (value) {
      return _then(_value.copyWith(pressure: value));
    });
  }
}

/// @nodoc
abstract class _$CurrentWeatherCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$CurrentWeatherCopyWith(
          _CurrentWeather value, $Res Function(_CurrentWeather) then) =
      __$CurrentWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'WeatherText') String weatherText,
      @JsonKey(name: 'WeatherIcon') int weatherIcon,
      @JsonKey(name: 'Temperature') Units temperature,
      @JsonKey(name: 'RealFeelTemperature') Units realFeelTemperature,
      @JsonKey(name: 'RelativeHumidity') int relativeHumidity,
      @JsonKey(name: 'Wind') Wind wind,
      @JsonKey(name: 'Visibility') Units visibility,
      @JsonKey(name: 'CloudCover') int cloudCover,
      @JsonKey(name: 'Pressure') Units pressure,
      @JsonKey(name: 'MobileLink') String mobileLink});

  @override
  $UnitsCopyWith<$Res> get temperature;
  @override
  $UnitsCopyWith<$Res> get realFeelTemperature;
  @override
  $WindCopyWith<$Res> get wind;
  @override
  $UnitsCopyWith<$Res> get visibility;
  @override
  $UnitsCopyWith<$Res> get pressure;
}

/// @nodoc
class __$CurrentWeatherCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res>
    implements _$CurrentWeatherCopyWith<$Res> {
  __$CurrentWeatherCopyWithImpl(
      _CurrentWeather _value, $Res Function(_CurrentWeather) _then)
      : super(_value, (v) => _then(v as _CurrentWeather));

  @override
  _CurrentWeather get _value => super._value as _CurrentWeather;

  @override
  $Res call({
    Object weatherText = freezed,
    Object weatherIcon = freezed,
    Object temperature = freezed,
    Object realFeelTemperature = freezed,
    Object relativeHumidity = freezed,
    Object wind = freezed,
    Object visibility = freezed,
    Object cloudCover = freezed,
    Object pressure = freezed,
    Object mobileLink = freezed,
  }) {
    return _then(_CurrentWeather(
      weatherText == freezed ? _value.weatherText : weatherText as String,
      weatherIcon == freezed ? _value.weatherIcon : weatherIcon as int,
      temperature == freezed ? _value.temperature : temperature as Units,
      realFeelTemperature == freezed
          ? _value.realFeelTemperature
          : realFeelTemperature as Units,
      relativeHumidity == freezed
          ? _value.relativeHumidity
          : relativeHumidity as int,
      wind == freezed ? _value.wind : wind as Wind,
      visibility == freezed ? _value.visibility : visibility as Units,
      cloudCover == freezed ? _value.cloudCover : cloudCover as int,
      pressure == freezed ? _value.pressure : pressure as Units,
      mobileLink == freezed ? _value.mobileLink : mobileLink as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CurrentWeather implements _CurrentWeather {
  const _$_CurrentWeather(
      @JsonKey(name: 'WeatherText') this.weatherText,
      @JsonKey(name: 'WeatherIcon') this.weatherIcon,
      @JsonKey(name: 'Temperature') this.temperature,
      @JsonKey(name: 'RealFeelTemperature') this.realFeelTemperature,
      @JsonKey(name: 'RelativeHumidity') this.relativeHumidity,
      @JsonKey(name: 'Wind') this.wind,
      @JsonKey(name: 'Visibility') this.visibility,
      @JsonKey(name: 'CloudCover') this.cloudCover,
      @JsonKey(name: 'Pressure') this.pressure,
      @JsonKey(name: 'MobileLink') this.mobileLink)
      : assert(weatherText != null),
        assert(weatherIcon != null),
        assert(temperature != null),
        assert(realFeelTemperature != null),
        assert(relativeHumidity != null),
        assert(wind != null),
        assert(visibility != null),
        assert(cloudCover != null),
        assert(pressure != null),
        assert(mobileLink != null);

  factory _$_CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$_$_CurrentWeatherFromJson(json);

  @override
  @JsonKey(name: 'WeatherText')
  final String weatherText;
  @override
  @JsonKey(name: 'WeatherIcon')
  final int weatherIcon;
  @override
  @JsonKey(name: 'Temperature')
  final Units temperature;
  @override
  @JsonKey(name: 'RealFeelTemperature')
  final Units realFeelTemperature;
  @override
  @JsonKey(name: 'RelativeHumidity')
  final int relativeHumidity;
  @override
  @JsonKey(name: 'Wind')
  final Wind wind;
  @override
  @JsonKey(name: 'Visibility')
  final Units visibility;
  @override
  @JsonKey(name: 'CloudCover')
  final int cloudCover;
  @override
  @JsonKey(name: 'Pressure')
  final Units pressure;
  @override
  @JsonKey(name: 'MobileLink')
  final String mobileLink;

  @override
  String toString() {
    return 'CurrentWeather(weatherText: $weatherText, weatherIcon: $weatherIcon, temperature: $temperature, realFeelTemperature: $realFeelTemperature, relativeHumidity: $relativeHumidity, wind: $wind, visibility: $visibility, cloudCover: $cloudCover, pressure: $pressure, mobileLink: $mobileLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrentWeather &&
            (identical(other.weatherText, weatherText) ||
                const DeepCollectionEquality()
                    .equals(other.weatherText, weatherText)) &&
            (identical(other.weatherIcon, weatherIcon) ||
                const DeepCollectionEquality()
                    .equals(other.weatherIcon, weatherIcon)) &&
            (identical(other.temperature, temperature) ||
                const DeepCollectionEquality()
                    .equals(other.temperature, temperature)) &&
            (identical(other.realFeelTemperature, realFeelTemperature) ||
                const DeepCollectionEquality()
                    .equals(other.realFeelTemperature, realFeelTemperature)) &&
            (identical(other.relativeHumidity, relativeHumidity) ||
                const DeepCollectionEquality()
                    .equals(other.relativeHumidity, relativeHumidity)) &&
            (identical(other.wind, wind) ||
                const DeepCollectionEquality().equals(other.wind, wind)) &&
            (identical(other.visibility, visibility) ||
                const DeepCollectionEquality()
                    .equals(other.visibility, visibility)) &&
            (identical(other.cloudCover, cloudCover) ||
                const DeepCollectionEquality()
                    .equals(other.cloudCover, cloudCover)) &&
            (identical(other.pressure, pressure) ||
                const DeepCollectionEquality()
                    .equals(other.pressure, pressure)) &&
            (identical(other.mobileLink, mobileLink) ||
                const DeepCollectionEquality()
                    .equals(other.mobileLink, mobileLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weatherText) ^
      const DeepCollectionEquality().hash(weatherIcon) ^
      const DeepCollectionEquality().hash(temperature) ^
      const DeepCollectionEquality().hash(realFeelTemperature) ^
      const DeepCollectionEquality().hash(relativeHumidity) ^
      const DeepCollectionEquality().hash(wind) ^
      const DeepCollectionEquality().hash(visibility) ^
      const DeepCollectionEquality().hash(cloudCover) ^
      const DeepCollectionEquality().hash(pressure) ^
      const DeepCollectionEquality().hash(mobileLink);

  @JsonKey(ignore: true)
  @override
  _$CurrentWeatherCopyWith<_CurrentWeather> get copyWith =>
      __$CurrentWeatherCopyWithImpl<_CurrentWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CurrentWeatherToJson(this);
  }
}

abstract class _CurrentWeather implements CurrentWeather {
  const factory _CurrentWeather(
      @JsonKey(name: 'WeatherText') String weatherText,
      @JsonKey(name: 'WeatherIcon') int weatherIcon,
      @JsonKey(name: 'Temperature') Units temperature,
      @JsonKey(name: 'RealFeelTemperature') Units realFeelTemperature,
      @JsonKey(name: 'RelativeHumidity') int relativeHumidity,
      @JsonKey(name: 'Wind') Wind wind,
      @JsonKey(name: 'Visibility') Units visibility,
      @JsonKey(name: 'CloudCover') int cloudCover,
      @JsonKey(name: 'Pressure') Units pressure,
      @JsonKey(name: 'MobileLink') String mobileLink) = _$_CurrentWeather;

  factory _CurrentWeather.fromJson(Map<String, dynamic> json) =
      _$_CurrentWeather.fromJson;

  @override
  @JsonKey(name: 'WeatherText')
  String get weatherText;
  @override
  @JsonKey(name: 'WeatherIcon')
  int get weatherIcon;
  @override
  @JsonKey(name: 'Temperature')
  Units get temperature;
  @override
  @JsonKey(name: 'RealFeelTemperature')
  Units get realFeelTemperature;
  @override
  @JsonKey(name: 'RelativeHumidity')
  int get relativeHumidity;
  @override
  @JsonKey(name: 'Wind')
  Wind get wind;
  @override
  @JsonKey(name: 'Visibility')
  Units get visibility;
  @override
  @JsonKey(name: 'CloudCover')
  int get cloudCover;
  @override
  @JsonKey(name: 'Pressure')
  Units get pressure;
  @override
  @JsonKey(name: 'MobileLink')
  String get mobileLink;
  @override
  @JsonKey(ignore: true)
  _$CurrentWeatherCopyWith<_CurrentWeather> get copyWith;
}

Units _$UnitsFromJson(Map<String, dynamic> json) {
  return _Units.fromJson(json);
}

/// @nodoc
class _$UnitsTearOff {
  const _$UnitsTearOff();

// ignore: unused_element
  _Units call(@JsonKey(name: 'Metric') Unit metric,
      @JsonKey(name: 'Imperial') Unit imperial) {
    return _Units(
      metric,
      imperial,
    );
  }

// ignore: unused_element
  Units fromJson(Map<String, Object> json) {
    return Units.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Units = _$UnitsTearOff();

/// @nodoc
mixin _$Units {
  @JsonKey(name: 'Metric')
  Unit get metric;
  @JsonKey(name: 'Imperial')
  Unit get imperial;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UnitsCopyWith<Units> get copyWith;
}

/// @nodoc
abstract class $UnitsCopyWith<$Res> {
  factory $UnitsCopyWith(Units value, $Res Function(Units) then) =
      _$UnitsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Metric') Unit metric,
      @JsonKey(name: 'Imperial') Unit imperial});

  $UnitCopyWith<$Res> get metric;
  $UnitCopyWith<$Res> get imperial;
}

/// @nodoc
class _$UnitsCopyWithImpl<$Res> implements $UnitsCopyWith<$Res> {
  _$UnitsCopyWithImpl(this._value, this._then);

  final Units _value;
  // ignore: unused_field
  final $Res Function(Units) _then;

  @override
  $Res call({
    Object metric = freezed,
    Object imperial = freezed,
  }) {
    return _then(_value.copyWith(
      metric: metric == freezed ? _value.metric : metric as Unit,
      imperial: imperial == freezed ? _value.imperial : imperial as Unit,
    ));
  }

  @override
  $UnitCopyWith<$Res> get metric {
    if (_value.metric == null) {
      return null;
    }
    return $UnitCopyWith<$Res>(_value.metric, (value) {
      return _then(_value.copyWith(metric: value));
    });
  }

  @override
  $UnitCopyWith<$Res> get imperial {
    if (_value.imperial == null) {
      return null;
    }
    return $UnitCopyWith<$Res>(_value.imperial, (value) {
      return _then(_value.copyWith(imperial: value));
    });
  }
}

/// @nodoc
abstract class _$UnitsCopyWith<$Res> implements $UnitsCopyWith<$Res> {
  factory _$UnitsCopyWith(_Units value, $Res Function(_Units) then) =
      __$UnitsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Metric') Unit metric,
      @JsonKey(name: 'Imperial') Unit imperial});

  @override
  $UnitCopyWith<$Res> get metric;
  @override
  $UnitCopyWith<$Res> get imperial;
}

/// @nodoc
class __$UnitsCopyWithImpl<$Res> extends _$UnitsCopyWithImpl<$Res>
    implements _$UnitsCopyWith<$Res> {
  __$UnitsCopyWithImpl(_Units _value, $Res Function(_Units) _then)
      : super(_value, (v) => _then(v as _Units));

  @override
  _Units get _value => super._value as _Units;

  @override
  $Res call({
    Object metric = freezed,
    Object imperial = freezed,
  }) {
    return _then(_Units(
      metric == freezed ? _value.metric : metric as Unit,
      imperial == freezed ? _value.imperial : imperial as Unit,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Units implements _Units {
  const _$_Units(@JsonKey(name: 'Metric') this.metric,
      @JsonKey(name: 'Imperial') this.imperial)
      : assert(metric != null),
        assert(imperial != null);

  factory _$_Units.fromJson(Map<String, dynamic> json) =>
      _$_$_UnitsFromJson(json);

  @override
  @JsonKey(name: 'Metric')
  final Unit metric;
  @override
  @JsonKey(name: 'Imperial')
  final Unit imperial;

  @override
  String toString() {
    return 'Units(metric: $metric, imperial: $imperial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Units &&
            (identical(other.metric, metric) ||
                const DeepCollectionEquality().equals(other.metric, metric)) &&
            (identical(other.imperial, imperial) ||
                const DeepCollectionEquality()
                    .equals(other.imperial, imperial)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(metric) ^
      const DeepCollectionEquality().hash(imperial);

  @JsonKey(ignore: true)
  @override
  _$UnitsCopyWith<_Units> get copyWith =>
      __$UnitsCopyWithImpl<_Units>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UnitsToJson(this);
  }
}

abstract class _Units implements Units {
  const factory _Units(@JsonKey(name: 'Metric') Unit metric,
      @JsonKey(name: 'Imperial') Unit imperial) = _$_Units;

  factory _Units.fromJson(Map<String, dynamic> json) = _$_Units.fromJson;

  @override
  @JsonKey(name: 'Metric')
  Unit get metric;
  @override
  @JsonKey(name: 'Imperial')
  Unit get imperial;
  @override
  @JsonKey(ignore: true)
  _$UnitsCopyWith<_Units> get copyWith;
}

Unit _$UnitFromJson(Map<String, dynamic> json) {
  return _Unit.fromJson(json);
}

/// @nodoc
class _$UnitTearOff {
  const _$UnitTearOff();

// ignore: unused_element
  _Unit call(
      @JsonKey(name: 'Value') double value,
      @JsonKey(name: 'Unit') String unit,
      @JsonKey(name: 'UnitType') int unitType) {
    return _Unit(
      value,
      unit,
      unitType,
    );
  }

// ignore: unused_element
  Unit fromJson(Map<String, Object> json) {
    return Unit.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Unit = _$UnitTearOff();

/// @nodoc
mixin _$Unit {
  @JsonKey(name: 'Value')
  double get value;
  @JsonKey(name: 'Unit')
  String get unit;
  @JsonKey(name: 'UnitType')
  int get unitType;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UnitCopyWith<Unit> get copyWith;
}

/// @nodoc
abstract class $UnitCopyWith<$Res> {
  factory $UnitCopyWith(Unit value, $Res Function(Unit) then) =
      _$UnitCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Value') double value,
      @JsonKey(name: 'Unit') String unit,
      @JsonKey(name: 'UnitType') int unitType});
}

/// @nodoc
class _$UnitCopyWithImpl<$Res> implements $UnitCopyWith<$Res> {
  _$UnitCopyWithImpl(this._value, this._then);

  final Unit _value;
  // ignore: unused_field
  final $Res Function(Unit) _then;

  @override
  $Res call({
    Object value = freezed,
    Object unit = freezed,
    Object unitType = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as double,
      unit: unit == freezed ? _value.unit : unit as String,
      unitType: unitType == freezed ? _value.unitType : unitType as int,
    ));
  }
}

/// @nodoc
abstract class _$UnitCopyWith<$Res> implements $UnitCopyWith<$Res> {
  factory _$UnitCopyWith(_Unit value, $Res Function(_Unit) then) =
      __$UnitCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Value') double value,
      @JsonKey(name: 'Unit') String unit,
      @JsonKey(name: 'UnitType') int unitType});
}

/// @nodoc
class __$UnitCopyWithImpl<$Res> extends _$UnitCopyWithImpl<$Res>
    implements _$UnitCopyWith<$Res> {
  __$UnitCopyWithImpl(_Unit _value, $Res Function(_Unit) _then)
      : super(_value, (v) => _then(v as _Unit));

  @override
  _Unit get _value => super._value as _Unit;

  @override
  $Res call({
    Object value = freezed,
    Object unit = freezed,
    Object unitType = freezed,
  }) {
    return _then(_Unit(
      value == freezed ? _value.value : value as double,
      unit == freezed ? _value.unit : unit as String,
      unitType == freezed ? _value.unitType : unitType as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Unit implements _Unit {
  const _$_Unit(
      @JsonKey(name: 'Value') this.value,
      @JsonKey(name: 'Unit') this.unit,
      @JsonKey(name: 'UnitType') this.unitType)
      : assert(value != null),
        assert(unit != null),
        assert(unitType != null);

  factory _$_Unit.fromJson(Map<String, dynamic> json) =>
      _$_$_UnitFromJson(json);

  @override
  @JsonKey(name: 'Value')
  final double value;
  @override
  @JsonKey(name: 'Unit')
  final String unit;
  @override
  @JsonKey(name: 'UnitType')
  final int unitType;

  @override
  String toString() {
    return 'Unit(value: $value, unit: $unit, unitType: $unitType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unit &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.unitType, unitType) ||
                const DeepCollectionEquality()
                    .equals(other.unitType, unitType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(unitType);

  @JsonKey(ignore: true)
  @override
  _$UnitCopyWith<_Unit> get copyWith =>
      __$UnitCopyWithImpl<_Unit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UnitToJson(this);
  }
}

abstract class _Unit implements Unit {
  const factory _Unit(
      @JsonKey(name: 'Value') double value,
      @JsonKey(name: 'Unit') String unit,
      @JsonKey(name: 'UnitType') int unitType) = _$_Unit;

  factory _Unit.fromJson(Map<String, dynamic> json) = _$_Unit.fromJson;

  @override
  @JsonKey(name: 'Value')
  double get value;
  @override
  @JsonKey(name: 'Unit')
  String get unit;
  @override
  @JsonKey(name: 'UnitType')
  int get unitType;
  @override
  @JsonKey(ignore: true)
  _$UnitCopyWith<_Unit> get copyWith;
}

Wind _$WindFromJson(Map<String, dynamic> json) {
  return _Wind.fromJson(json);
}

/// @nodoc
class _$WindTearOff {
  const _$WindTearOff();

// ignore: unused_element
  _Wind call(@JsonKey(name: 'Direction') Direction direction,
      @JsonKey(name: 'Speed') Units speed) {
    return _Wind(
      direction,
      speed,
    );
  }

// ignore: unused_element
  Wind fromJson(Map<String, Object> json) {
    return Wind.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Wind = _$WindTearOff();

/// @nodoc
mixin _$Wind {
  @JsonKey(name: 'Direction')
  Direction get direction;
  @JsonKey(name: 'Speed')
  Units get speed;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WindCopyWith<Wind> get copyWith;
}

/// @nodoc
abstract class $WindCopyWith<$Res> {
  factory $WindCopyWith(Wind value, $Res Function(Wind) then) =
      _$WindCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Direction') Direction direction,
      @JsonKey(name: 'Speed') Units speed});

  $DirectionCopyWith<$Res> get direction;
  $UnitsCopyWith<$Res> get speed;
}

/// @nodoc
class _$WindCopyWithImpl<$Res> implements $WindCopyWith<$Res> {
  _$WindCopyWithImpl(this._value, this._then);

  final Wind _value;
  // ignore: unused_field
  final $Res Function(Wind) _then;

  @override
  $Res call({
    Object direction = freezed,
    Object speed = freezed,
  }) {
    return _then(_value.copyWith(
      direction:
          direction == freezed ? _value.direction : direction as Direction,
      speed: speed == freezed ? _value.speed : speed as Units,
    ));
  }

  @override
  $DirectionCopyWith<$Res> get direction {
    if (_value.direction == null) {
      return null;
    }
    return $DirectionCopyWith<$Res>(_value.direction, (value) {
      return _then(_value.copyWith(direction: value));
    });
  }

  @override
  $UnitsCopyWith<$Res> get speed {
    if (_value.speed == null) {
      return null;
    }
    return $UnitsCopyWith<$Res>(_value.speed, (value) {
      return _then(_value.copyWith(speed: value));
    });
  }
}

/// @nodoc
abstract class _$WindCopyWith<$Res> implements $WindCopyWith<$Res> {
  factory _$WindCopyWith(_Wind value, $Res Function(_Wind) then) =
      __$WindCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Direction') Direction direction,
      @JsonKey(name: 'Speed') Units speed});

  @override
  $DirectionCopyWith<$Res> get direction;
  @override
  $UnitsCopyWith<$Res> get speed;
}

/// @nodoc
class __$WindCopyWithImpl<$Res> extends _$WindCopyWithImpl<$Res>
    implements _$WindCopyWith<$Res> {
  __$WindCopyWithImpl(_Wind _value, $Res Function(_Wind) _then)
      : super(_value, (v) => _then(v as _Wind));

  @override
  _Wind get _value => super._value as _Wind;

  @override
  $Res call({
    Object direction = freezed,
    Object speed = freezed,
  }) {
    return _then(_Wind(
      direction == freezed ? _value.direction : direction as Direction,
      speed == freezed ? _value.speed : speed as Units,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Wind implements _Wind {
  const _$_Wind(@JsonKey(name: 'Direction') this.direction,
      @JsonKey(name: 'Speed') this.speed)
      : assert(direction != null),
        assert(speed != null);

  factory _$_Wind.fromJson(Map<String, dynamic> json) =>
      _$_$_WindFromJson(json);

  @override
  @JsonKey(name: 'Direction')
  final Direction direction;
  @override
  @JsonKey(name: 'Speed')
  final Units speed;

  @override
  String toString() {
    return 'Wind(direction: $direction, speed: $speed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Wind &&
            (identical(other.direction, direction) ||
                const DeepCollectionEquality()
                    .equals(other.direction, direction)) &&
            (identical(other.speed, speed) ||
                const DeepCollectionEquality().equals(other.speed, speed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(direction) ^
      const DeepCollectionEquality().hash(speed);

  @JsonKey(ignore: true)
  @override
  _$WindCopyWith<_Wind> get copyWith =>
      __$WindCopyWithImpl<_Wind>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WindToJson(this);
  }
}

abstract class _Wind implements Wind {
  const factory _Wind(@JsonKey(name: 'Direction') Direction direction,
      @JsonKey(name: 'Speed') Units speed) = _$_Wind;

  factory _Wind.fromJson(Map<String, dynamic> json) = _$_Wind.fromJson;

  @override
  @JsonKey(name: 'Direction')
  Direction get direction;
  @override
  @JsonKey(name: 'Speed')
  Units get speed;
  @override
  @JsonKey(ignore: true)
  _$WindCopyWith<_Wind> get copyWith;
}

Direction _$DirectionFromJson(Map<String, dynamic> json) {
  return _Direction.fromJson(json);
}

/// @nodoc
class _$DirectionTearOff {
  const _$DirectionTearOff();

// ignore: unused_element
  _Direction call(
      @JsonKey(name: 'Degrees') int degrees,
      @JsonKey(name: 'Localized') String localized,
      @JsonKey(name: 'English') String english) {
    return _Direction(
      degrees,
      localized,
      english,
    );
  }

// ignore: unused_element
  Direction fromJson(Map<String, Object> json) {
    return Direction.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Direction = _$DirectionTearOff();

/// @nodoc
mixin _$Direction {
  @JsonKey(name: 'Degrees')
  int get degrees;
  @JsonKey(name: 'Localized')
  String get localized;
  @JsonKey(name: 'English')
  String get english;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DirectionCopyWith<Direction> get copyWith;
}

/// @nodoc
abstract class $DirectionCopyWith<$Res> {
  factory $DirectionCopyWith(Direction value, $Res Function(Direction) then) =
      _$DirectionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Degrees') int degrees,
      @JsonKey(name: 'Localized') String localized,
      @JsonKey(name: 'English') String english});
}

/// @nodoc
class _$DirectionCopyWithImpl<$Res> implements $DirectionCopyWith<$Res> {
  _$DirectionCopyWithImpl(this._value, this._then);

  final Direction _value;
  // ignore: unused_field
  final $Res Function(Direction) _then;

  @override
  $Res call({
    Object degrees = freezed,
    Object localized = freezed,
    Object english = freezed,
  }) {
    return _then(_value.copyWith(
      degrees: degrees == freezed ? _value.degrees : degrees as int,
      localized: localized == freezed ? _value.localized : localized as String,
      english: english == freezed ? _value.english : english as String,
    ));
  }
}

/// @nodoc
abstract class _$DirectionCopyWith<$Res> implements $DirectionCopyWith<$Res> {
  factory _$DirectionCopyWith(
          _Direction value, $Res Function(_Direction) then) =
      __$DirectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Degrees') int degrees,
      @JsonKey(name: 'Localized') String localized,
      @JsonKey(name: 'English') String english});
}

/// @nodoc
class __$DirectionCopyWithImpl<$Res> extends _$DirectionCopyWithImpl<$Res>
    implements _$DirectionCopyWith<$Res> {
  __$DirectionCopyWithImpl(_Direction _value, $Res Function(_Direction) _then)
      : super(_value, (v) => _then(v as _Direction));

  @override
  _Direction get _value => super._value as _Direction;

  @override
  $Res call({
    Object degrees = freezed,
    Object localized = freezed,
    Object english = freezed,
  }) {
    return _then(_Direction(
      degrees == freezed ? _value.degrees : degrees as int,
      localized == freezed ? _value.localized : localized as String,
      english == freezed ? _value.english : english as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Direction implements _Direction {
  const _$_Direction(
      @JsonKey(name: 'Degrees') this.degrees,
      @JsonKey(name: 'Localized') this.localized,
      @JsonKey(name: 'English') this.english)
      : assert(degrees != null),
        assert(localized != null),
        assert(english != null);

  factory _$_Direction.fromJson(Map<String, dynamic> json) =>
      _$_$_DirectionFromJson(json);

  @override
  @JsonKey(name: 'Degrees')
  final int degrees;
  @override
  @JsonKey(name: 'Localized')
  final String localized;
  @override
  @JsonKey(name: 'English')
  final String english;

  @override
  String toString() {
    return 'Direction(degrees: $degrees, localized: $localized, english: $english)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Direction &&
            (identical(other.degrees, degrees) ||
                const DeepCollectionEquality()
                    .equals(other.degrees, degrees)) &&
            (identical(other.localized, localized) ||
                const DeepCollectionEquality()
                    .equals(other.localized, localized)) &&
            (identical(other.english, english) ||
                const DeepCollectionEquality().equals(other.english, english)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(degrees) ^
      const DeepCollectionEquality().hash(localized) ^
      const DeepCollectionEquality().hash(english);

  @JsonKey(ignore: true)
  @override
  _$DirectionCopyWith<_Direction> get copyWith =>
      __$DirectionCopyWithImpl<_Direction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DirectionToJson(this);
  }
}

abstract class _Direction implements Direction {
  const factory _Direction(
      @JsonKey(name: 'Degrees') int degrees,
      @JsonKey(name: 'Localized') String localized,
      @JsonKey(name: 'English') String english) = _$_Direction;

  factory _Direction.fromJson(Map<String, dynamic> json) =
      _$_Direction.fromJson;

  @override
  @JsonKey(name: 'Degrees')
  int get degrees;
  @override
  @JsonKey(name: 'Localized')
  String get localized;
  @override
  @JsonKey(name: 'English')
  String get english;
  @override
  @JsonKey(ignore: true)
  _$DirectionCopyWith<_Direction> get copyWith;
}
