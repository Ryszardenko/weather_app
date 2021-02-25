import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

part 'location_model.g.dart';

///flutter pub run build_runner build --delete-conflicting-outputs

@freezed
abstract class Location with _$Location {
  const factory Location(
    @JsonKey(name: 'Key') String key,
    @JsonKey(name: 'Type') String type,
    @JsonKey(name: 'Rank') int rank,
    @JsonKey(name: 'LocalizedName') String localizedName,
    @JsonKey(name: 'Country') Area country,
    @JsonKey(name: 'AdministrativeArea') Area administrativeArea,
  ) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}

@freezed
abstract class Area with _$Area {
  const factory Area(
    @JsonKey(name: 'ID') String id,
    @JsonKey(name: 'LocalizedName') String localizedName,
  ) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}
