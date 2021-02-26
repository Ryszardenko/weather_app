import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_weather_model.freezed.dart';

part 'current_weather_model.g.dart';

///flutter pub run build_runner build --delete-conflicting-outputs

@freezed
abstract class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather(
    @JsonKey(name: 'WeatherText') String weatherText,
    @JsonKey(name: 'WeatherIcon') int weatherIcon,
    @JsonKey(name: 'Temperature') Units temperature,
    @JsonKey(name: 'RealFeelTemperature') Units realFeelTemperature,
    @JsonKey(name: 'RelativeHumidity') int relativeHumidity,
    @JsonKey(name: 'Wind') Wind wind,
    @JsonKey(name: 'Visibility') Units visibility,
    @JsonKey(name: 'CloudCover') int cloudCover,
    @JsonKey(name: 'Pressure') Units pressure,
    @JsonKey(name: 'MobileLink') String mobileLink,
  ) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}

@freezed
abstract class Units with _$Units {
  const factory Units(
    @JsonKey(name: 'Metric') Unit metric,
    @JsonKey(name: 'Imperial') Unit imperial,
  ) = _Units;

  factory Units.fromJson(Map<String, dynamic> json) =>
      _$UnitsFromJson(json);
}

@freezed
abstract class Unit with _$Unit {
  const factory Unit(
    @JsonKey(name: 'Value') double value,
    @JsonKey(name: 'Unit') String unit,
    @JsonKey(name: 'UnitType') int unitType,
  ) = _Unit;

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);
}

@freezed
abstract class Wind with _$Wind {
  const factory Wind(
      @JsonKey(name: 'Direction') Direction direction,
      @JsonKey(name: 'Speed') Units speed,
      ) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}

@freezed
abstract class Direction with _$Direction {
  const factory Direction(
      @JsonKey(name: 'Degrees') int degrees,
      @JsonKey(name: 'Localized') String localized,
      @JsonKey(name: 'English') String english,
      ) = _Direction;

  factory Direction.fromJson(Map<String, dynamic> json) => _$DirectionFromJson(json);
}
