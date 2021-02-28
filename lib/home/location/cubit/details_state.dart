import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather/current/current_weather_model.dart';

part 'details_state.freezed.dart';

///flutter pub run build_runner build --delete-conflicting-outputs

@freezed
abstract class DetailsState with _$DetailsState {
  const factory DetailsState.initial() = Initial;

  const factory DetailsState.loading() = Loading;

  const factory DetailsState.success(CurrentWeather weather) = Success;

  const factory DetailsState.error(String message) = Error;
}
