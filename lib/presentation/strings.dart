import 'package:weather_app/main.dart';

class Strings {
  static const String appName = "app_name";
  static const String findCity = "find_city";
  static const String notFound = "not_found";
  static const String invalidCityName = "invalid_city_name";
  static const String realFeel = "real_feel";
  static const String pressure = "pressure";
  static const String wind = "wind";
  static const String cloudCover = "cloud_cover";
  static const String humidity = "humidity";
  static const String visibility = "visibility";
  static const String noSearchHistory = "no_search_history";
  static const String recentlySearched = "recently_searched";
  static const String noInternet = "no_internet";
  static const String errorTryAgainLater = "error_try_again_later";
  static const String historyRetrievalError = "history_retrieval_error";
  static const String httpException = "http_exception";
  static const String formatException = "format_exception";
  static const String locationServicesDisabled = "location_services_disabled";
  static const String locationPermissionsPermanentlyDenied = "location_permissions_permanently_denied";
  static const String locationPermissionsAreDenied = "location_permissions_are_denied";
  static const String gettingYourLocalizationWeather = "getting_your_localization_weather";
  static const String youAreIn = "you_are_in";



  String getString(String stringKey) => MyApp.localizations.translate(stringKey);
}
