import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/location/location_model.dart';

part 'history_state.freezed.dart';

///flutter pub run build_runner build --delete-conflicting-outputs

@freezed
abstract class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = Initial;

  const factory HistoryState.loading() = Loading;

  const factory HistoryState.success(List<Location> locations) = Success;

  const factory HistoryState.empty() = Empty;

  const factory HistoryState.error(String message) = Error;
}
