import 'dart:io';
import 'package:dio/dio.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/models/weather/current/current_weather_model.dart';
import 'package:weather_app/models/weather/hourly/hourly_forecast_model.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/services/web_service.dart';

class ApiService {
  static ApiService _instance;
  static const API_KEY = "apikey=QyYFltaCEbdKPKjjhfSo7Hz6Xei6MAo4";

  ApiService._internal();

  factory ApiService() {
    if (_instance == null) {
      _instance = ApiService._internal();
    }
    return _instance;
  }

  final _dio = WebService().getDio();
  final _language = "language=${MyApp.localizations.locale.countryCode}";

  Future<List<Location>> fetchCities(String cityName) async {
    final path =
        "/locations/v1/cities/autocomplete?$API_KEY&q=$cityName&$_language";
    try {
      final response = await _dio.get(path);
      final result = response.data;
      final List<Location> cities =
          result.map<Location>((city) => Location.fromJson(city)).toList();
      return cities;
    } on DioError catch (e) {
      throw _throwException(e);
    }
  }

  Future<CurrentWeather> fetchCurrentWeather(String locationKey) async {
    final path =
        "/currentconditions/v1/$locationKey?$API_KEY&details=true&$_language";

    try {
      final response = await _dio.get(path);
      final result = response.data;
      final List<CurrentWeather> current = result
          .map<CurrentWeather>((weather) => CurrentWeather.fromJson(weather))
          .toList();
      return current.first;
    } on DioError catch (e) {
      throw _throwException(e);
    }
  }

  Future<List<HourlyForecast>> fetch12hForecast(String locationKey) async {
    final path =
        "/forecasts/v1/hourly/12hour/$locationKey?$API_KEY&metric=true&$_language";

    try {
      final response = await _dio.get(path);
      final result = response.data;
      final List<HourlyForecast> forecast = result
          .map<HourlyForecast>((weather) => HourlyForecast.fromJson(weather))
          .toList();
      return forecast;
    } on DioError catch (e) {
      throw _throwException(e);
    }
  }

  _throwException(DioError e) {
    if (e.type == DioErrorType.RESPONSE)
      throw Failure(Strings().getString(Strings.httpException));
    else if (e.type == DioErrorType.DEFAULT) {
      if (e.error is SocketException)
        throw Failure(Strings().getString(Strings.noInternet));
      else if (e.error is FormatException)
        throw Failure(Strings().getString(Strings.formatException));
    } else
      throw Failure(Strings().getString(Strings.errorTryAgainLater));
  }
}

class Failure {
  Failure(this.message);

  final String message;

  @override
  String toString() => message;
}
