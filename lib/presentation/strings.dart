import 'package:weather_app/main.dart';

class Strings {
  static const String appName = "Simple Weather";
  static const String copyright = "Simple Weather Copyright © 2021";
  static const String heroCurrentWeatherAnimation = "heroCurrentWeatherAnimation";

  String get findCity => getString("find_city");

  String get notFound => getString("not_found");

  String get retry => getString("retry");

  String get clear => getString("clear");

  String get invalidCityName => getString("invalid_city_name");

  String get realFeel => getString("real_feel");

  String get pressure => getString("pressure");

  String get wind => getString("wind");

  String get cloudCover => getString("cloud_cover");

  String get humidity => getString("humidity");

  String get visibility => getString("visibility");

  String get noSearchHistory => getString("no_search_history");

  String get recentlySearched => getString("recently_searched");

  String get noInternet => getString("no_internet");

  String get errorTryAgainLater => getString("error_try_again_later");

  String get historyRetrievalError => getString("history_retrieval_error");

  String get httpException => getString("http_exception");

  String get formatException => getString("format_exception");

  String get cantDisplayHourlyForecast => getString("cant_display_hourly_weather");

  String get cantDisplayYourLocationWeather => getString("cant_display_your_location_weather");

  String get locationServicesDisabled =>
      getString("location_services_disabled");

  String get locationPermissionsPermanentlyDenied =>
      getString("location_permissions_permanently_denied");

  String get locationPermissionsAreDenied =>
      getString("location_permissions_are_denied");

  String get gettingYourLocalizationWeather =>
      getString("getting_your_localization_weather");

  String getString(String stringKey) =>
      MyApp.localizations.translate(stringKey);
}
