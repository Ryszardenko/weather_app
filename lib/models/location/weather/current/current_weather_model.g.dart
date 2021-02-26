// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentWeather _$_$_CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _$_CurrentWeather(
    json['WeatherText'] as String,
    json['WeatherIcon'] as int,
    json['Temperature'] == null
        ? null
        : Units.fromJson(json['Temperature'] as Map<String, dynamic>),
    json['RealFeelTemperature'] == null
        ? null
        : Units.fromJson(json['RealFeelTemperature'] as Map<String, dynamic>),
    json['RelativeHumidity'] as int,
    json['Wind'] == null
        ? null
        : Wind.fromJson(json['Wind'] as Map<String, dynamic>),
    json['Visibility'] == null
        ? null
        : Units.fromJson(json['Visibility'] as Map<String, dynamic>),
    json['CloudCover'] as int,
    json['Pressure'] == null
        ? null
        : Units.fromJson(json['Pressure'] as Map<String, dynamic>),
    json['MobileLink'] as String,
  );
}

Map<String, dynamic> _$_$_CurrentWeatherToJson(_$_CurrentWeather instance) =>
    <String, dynamic>{
      'WeatherText': instance.weatherText,
      'WeatherIcon': instance.weatherIcon,
      'Temperature': instance.temperature,
      'RealFeelTemperature': instance.realFeelTemperature,
      'RelativeHumidity': instance.relativeHumidity,
      'Wind': instance.wind,
      'Visibility': instance.visibility,
      'CloudCover': instance.cloudCover,
      'Pressure': instance.pressure,
      'MobileLink': instance.mobileLink,
    };

_$_Units _$_$_UnitsFromJson(Map<String, dynamic> json) {
  return _$_Units(
    json['Metric'] == null
        ? null
        : Unit.fromJson(json['Metric'] as Map<String, dynamic>),
    json['Imperial'] == null
        ? null
        : Unit.fromJson(json['Imperial'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UnitsToJson(_$_Units instance) => <String, dynamic>{
      'Metric': instance.metric,
      'Imperial': instance.imperial,
    };

_$_Unit _$_$_UnitFromJson(Map<String, dynamic> json) {
  return _$_Unit(
    (json['Value'] as num)?.toDouble(),
    json['Unit'] as String,
    json['UnitType'] as int,
  );
}

Map<String, dynamic> _$_$_UnitToJson(_$_Unit instance) => <String, dynamic>{
      'Value': instance.value,
      'Unit': instance.unit,
      'UnitType': instance.unitType,
    };

_$_Wind _$_$_WindFromJson(Map<String, dynamic> json) {
  return _$_Wind(
    json['Direction'] == null
        ? null
        : Direction.fromJson(json['Direction'] as Map<String, dynamic>),
    json['Speed'] == null
        ? null
        : Units.fromJson(json['Speed'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_WindToJson(_$_Wind instance) => <String, dynamic>{
      'Direction': instance.direction,
      'Speed': instance.speed,
    };

_$_Direction _$_$_DirectionFromJson(Map<String, dynamic> json) {
  return _$_Direction(
    json['Degrees'] as int,
    json['Localized'] as String,
    json['English'] as String,
  );
}

Map<String, dynamic> _$_$_DirectionToJson(_$_Direction instance) =>
    <String, dynamic>{
      'Degrees': instance.degrees,
      'Localized': instance.localized,
      'English': instance.english,
    };
