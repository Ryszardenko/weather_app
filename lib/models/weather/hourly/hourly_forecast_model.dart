import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather/current/current_weather_model.dart';

part 'hourly_forecast_model.freezed.dart';

part 'hourly_forecast_model.g.dart';

@freezed
abstract class HourlyForecast with _$HourlyForecast {
  const factory HourlyForecast(
      @JsonKey(name: 'DateTime') String dateTime,
      @JsonKey(name: 'WeatherIcon') int weatherIcon,
      @JsonKey(name: 'Temperature') Unit temperature,
      @JsonKey(name: 'IconPhrase') String iconPhrase,
      ) = _HourlyForecast;

  factory HourlyForecast.fromJson(Map<String, dynamic> json) =>
      _$HourlyForecastFromJson(json);
}