import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather/current/current_weather_model.dart';

part 'location_state.freezed.dart';

///flutter pub run build_runner build --delete-conflicting-outputs

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState.initial() = Initial;

  const factory LocationState.loading() = Loading;

  const factory LocationState.success(CurrentWeather weather) = Success;

  const factory LocationState.error(String message) = Error;
}
