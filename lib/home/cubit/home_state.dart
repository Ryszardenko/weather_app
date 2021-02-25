import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/location/location_model.dart';

part 'home_state.freezed.dart';

///flutter pub run build_runner build --delete-conflicting-outputs

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;

  const factory HomeState.loading() = Loading;

  const factory HomeState.success(List<Location> locations) = Success;

  const factory HomeState.notFound(String query) = NotFound;

  const factory HomeState.error(String message) = Error;
}
