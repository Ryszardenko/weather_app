// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'hourly_forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HourlyForecast _$HourlyForecastFromJson(Map<String, dynamic> json) {
  return _HourlyForecast.fromJson(json);
}

/// @nodoc
class _$HourlyForecastTearOff {
  const _$HourlyForecastTearOff();

// ignore: unused_element
  _HourlyForecast call(
      @JsonKey(name: 'DateTime') String dateTime,
      @JsonKey(name: 'WeatherIcon') int weatherIcon,
      @JsonKey(name: 'Temperature') Unit temperature,
      @JsonKey(name: 'IconPhrase') String iconPhrase) {
    return _HourlyForecast(
      dateTime,
      weatherIcon,
      temperature,
      iconPhrase,
    );
  }

// ignore: unused_element
  HourlyForecast fromJson(Map<String, Object> json) {
    return HourlyForecast.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $HourlyForecast = _$HourlyForecastTearOff();

/// @nodoc
mixin _$HourlyForecast {
  @JsonKey(name: 'DateTime')
  String get dateTime;
  @JsonKey(name: 'WeatherIcon')
  int get weatherIcon;
  @JsonKey(name: 'Temperature')
  Unit get temperature;
  @JsonKey(name: 'IconPhrase')
  String get iconPhrase;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $HourlyForecastCopyWith<HourlyForecast> get copyWith;
}

/// @nodoc
abstract class $HourlyForecastCopyWith<$Res> {
  factory $HourlyForecastCopyWith(
          HourlyForecast value, $Res Function(HourlyForecast) then) =
      _$HourlyForecastCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'DateTime') String dateTime,
      @JsonKey(name: 'WeatherIcon') int weatherIcon,
      @JsonKey(name: 'Temperature') Unit temperature,
      @JsonKey(name: 'IconPhrase') String iconPhrase});

  $UnitCopyWith<$Res> get temperature;
}

/// @nodoc
class _$HourlyForecastCopyWithImpl<$Res>
    implements $HourlyForecastCopyWith<$Res> {
  _$HourlyForecastCopyWithImpl(this._value, this._then);

  final HourlyForecast _value;
  // ignore: unused_field
  final $Res Function(HourlyForecast) _then;

  @override
  $Res call({
    Object dateTime = freezed,
    Object weatherIcon = freezed,
    Object temperature = freezed,
    Object iconPhrase = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as String,
      weatherIcon:
          weatherIcon == freezed ? _value.weatherIcon : weatherIcon as int,
      temperature:
          temperature == freezed ? _value.temperature : temperature as Unit,
      iconPhrase:
          iconPhrase == freezed ? _value.iconPhrase : iconPhrase as String,
    ));
  }

  @override
  $UnitCopyWith<$Res> get temperature {
    if (_value.temperature == null) {
      return null;
    }
    return $UnitCopyWith<$Res>(_value.temperature, (value) {
      return _then(_value.copyWith(temperature: value));
    });
  }
}

/// @nodoc
abstract class _$HourlyForecastCopyWith<$Res>
    implements $HourlyForecastCopyWith<$Res> {
  factory _$HourlyForecastCopyWith(
          _HourlyForecast value, $Res Function(_HourlyForecast) then) =
      __$HourlyForecastCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'DateTime') String dateTime,
      @JsonKey(name: 'WeatherIcon') int weatherIcon,
      @JsonKey(name: 'Temperature') Unit temperature,
      @JsonKey(name: 'IconPhrase') String iconPhrase});

  @override
  $UnitCopyWith<$Res> get temperature;
}

/// @nodoc
class __$HourlyForecastCopyWithImpl<$Res>
    extends _$HourlyForecastCopyWithImpl<$Res>
    implements _$HourlyForecastCopyWith<$Res> {
  __$HourlyForecastCopyWithImpl(
      _HourlyForecast _value, $Res Function(_HourlyForecast) _then)
      : super(_value, (v) => _then(v as _HourlyForecast));

  @override
  _HourlyForecast get _value => super._value as _HourlyForecast;

  @override
  $Res call({
    Object dateTime = freezed,
    Object weatherIcon = freezed,
    Object temperature = freezed,
    Object iconPhrase = freezed,
  }) {
    return _then(_HourlyForecast(
      dateTime == freezed ? _value.dateTime : dateTime as String,
      weatherIcon == freezed ? _value.weatherIcon : weatherIcon as int,
      temperature == freezed ? _value.temperature : temperature as Unit,
      iconPhrase == freezed ? _value.iconPhrase : iconPhrase as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_HourlyForecast implements _HourlyForecast {
  const _$_HourlyForecast(
      @JsonKey(name: 'DateTime') this.dateTime,
      @JsonKey(name: 'WeatherIcon') this.weatherIcon,
      @JsonKey(name: 'Temperature') this.temperature,
      @JsonKey(name: 'IconPhrase') this.iconPhrase)
      : assert(dateTime != null),
        assert(weatherIcon != null),
        assert(temperature != null),
        assert(iconPhrase != null);

  factory _$_HourlyForecast.fromJson(Map<String, dynamic> json) =>
      _$_$_HourlyForecastFromJson(json);

  @override
  @JsonKey(name: 'DateTime')
  final String dateTime;
  @override
  @JsonKey(name: 'WeatherIcon')
  final int weatherIcon;
  @override
  @JsonKey(name: 'Temperature')
  final Unit temperature;
  @override
  @JsonKey(name: 'IconPhrase')
  final String iconPhrase;

  @override
  String toString() {
    return 'HourlyForecast(dateTime: $dateTime, weatherIcon: $weatherIcon, temperature: $temperature, iconPhrase: $iconPhrase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HourlyForecast &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.weatherIcon, weatherIcon) ||
                const DeepCollectionEquality()
                    .equals(other.weatherIcon, weatherIcon)) &&
            (identical(other.temperature, temperature) ||
                const DeepCollectionEquality()
                    .equals(other.temperature, temperature)) &&
            (identical(other.iconPhrase, iconPhrase) ||
                const DeepCollectionEquality()
                    .equals(other.iconPhrase, iconPhrase)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(weatherIcon) ^
      const DeepCollectionEquality().hash(temperature) ^
      const DeepCollectionEquality().hash(iconPhrase);

  @JsonKey(ignore: true)
  @override
  _$HourlyForecastCopyWith<_HourlyForecast> get copyWith =>
      __$HourlyForecastCopyWithImpl<_HourlyForecast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HourlyForecastToJson(this);
  }
}

abstract class _HourlyForecast implements HourlyForecast {
  const factory _HourlyForecast(
      @JsonKey(name: 'DateTime') String dateTime,
      @JsonKey(name: 'WeatherIcon') int weatherIcon,
      @JsonKey(name: 'Temperature') Unit temperature,
      @JsonKey(name: 'IconPhrase') String iconPhrase) = _$_HourlyForecast;

  factory _HourlyForecast.fromJson(Map<String, dynamic> json) =
      _$_HourlyForecast.fromJson;

  @override
  @JsonKey(name: 'DateTime')
  String get dateTime;
  @override
  @JsonKey(name: 'WeatherIcon')
  int get weatherIcon;
  @override
  @JsonKey(name: 'Temperature')
  Unit get temperature;
  @override
  @JsonKey(name: 'IconPhrase')
  String get iconPhrase;
  @override
  @JsonKey(ignore: true)
  _$HourlyForecastCopyWith<_HourlyForecast> get copyWith;
}
