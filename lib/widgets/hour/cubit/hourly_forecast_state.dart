import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather/hourly/hourly_forecast_model.dart';

part 'hourly_forecast_state.freezed.dart';

///flutter pub run build_runner build --delete-conflicting-outputs

@freezed
abstract class HourlyForecastState with _$HourlyForecastState {
  const factory HourlyForecastState.initial() = Initial;

  const factory HourlyForecastState.loading() = Loading;

  const factory HourlyForecastState.success(List<HourlyForecast> forecasts) = Success;

  const factory HourlyForecastState.error(String message) = Error;
}
