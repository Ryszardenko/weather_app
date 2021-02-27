// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HourlyForecast _$_$_HourlyForecastFromJson(Map<String, dynamic> json) {
  return _$_HourlyForecast(
    json['DateTime'] as String,
    json['WeatherIcon'] as int,
    json['Temperature'] == null
        ? null
        : Unit.fromJson(json['Temperature'] as Map<String, dynamic>),
    json['IconPhrase'] as String,
  );
}

Map<String, dynamic> _$_$_HourlyForecastToJson(_$_HourlyForecast instance) =>
    <String, dynamic>{
      'DateTime': instance.dateTime,
      'WeatherIcon': instance.weatherIcon,
      'Temperature': instance.temperature,
      'IconPhrase': instance.iconPhrase,
    };
