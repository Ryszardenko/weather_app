import 'dart:io';
import 'package:dio/dio.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/models/location/weather/current/current_weather_model.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/services/web_service.dart';

class ApiService {
  static ApiService _instance;
  static const API_KEY = "2tTgivJXOAPSiGB5rYAZHUU6IHfNiIln";

  ApiService._internal();

  factory ApiService() {
    if (_instance == null) {
      _instance = ApiService._internal();
    }
    return _instance;
  }

  final _dio = WebService().getDio();

  Future<List<Location>> fetchCities(String cityName) async {
    final path =
        "/locations/v1/cities/autocomplete?apikey=$API_KEY&q=$cityName";
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
    final path = "/currentconditions/v1/$locationKey?apikey=$API_KEY&details=true";

    try {
      final response = await _dio.get(path);
      final result = response.data;
      final List<CurrentWeather> weathers = result
          .map<CurrentWeather>((weather) => CurrentWeather.fromJson(weather))
          .toList();
      return weathers.first;
    } on DioError catch (e) {
      throw _throwException(e);
    }
  }

  //Future fetch12hourWeather

  _throwException(DioError e) {
    if (e.type == DioErrorType.RESPONSE)
      throw Failure(Strings.httpException);
    else if (e.type == DioErrorType.DEFAULT) {
      if (e.error is SocketException)
        throw Failure(Strings.noInternet);
      else if (e.error is FormatException)
        throw Failure(Strings.formatException);
    } else
      throw Failure(Strings.errorTryAgainLater);
  }
}

class Failure {
  Failure(this.message);

  final String message;

  @override
  String toString() => message;
}
