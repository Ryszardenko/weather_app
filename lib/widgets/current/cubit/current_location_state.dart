import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather/current/current_weather_model.dart';

part 'current_location_state.freezed.dart';

///flutter pub run build_runner build --delete-conflicting-outputs

@freezed
abstract class CurrentLocationState with _$CurrentLocationState {
  const factory CurrentLocationState.initial() = Initial;

  const factory CurrentLocationState.loading() = Loading;

  const factory CurrentLocationState.success(String locationName, CurrentWeather weather) = Success;

  const factory CurrentLocationState.error(String message) = Error;
}
