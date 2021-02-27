import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/location/location_model.dart';

part 'history_state.freezed.dart';

///flutter pub run build_runner build --delete-conflicting-outputs

@freezed
abstract class SearchHistoryState with _$SearchHistoryState {
  const factory SearchHistoryState.initial() = Initial;

  const factory SearchHistoryState.loading() = Loading;

  const factory SearchHistoryState.success(List<Location> locations) = Success;

  const factory SearchHistoryState.empty() = Empty;

  const factory SearchHistoryState.error(String message) = Error;
}
