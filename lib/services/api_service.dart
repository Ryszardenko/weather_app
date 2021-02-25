import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/services/web_service.dart';

class ApiService {
  static ApiService _instance;
  static const API_KEY = 'VGcxJbzPI7z0Aki4iQNufZAom6rSS7rZ';

  ApiService._internal();

  factory ApiService() {
    if (_instance == null) {
      _instance = ApiService._internal();
    }
    return _instance;
  }

  final _dio = WebService().getDio();

  Future<List<Location>> fetchCities({String cityName}) async {
    final path =
        '/locations/v1/cities/autocomplete?apikey=$API_KEY&q=$cityName';
    try {
      final response = await _dio.get(path);

      if (response.statusCode == 200) {
        final result = response.data;
        final List<Location> cities =
            result.map<Location>((city) => Location.fromJson(city)).toList();
        return cities;
      } else {
        print('fetchCities() failed ${response.statusCode}');
        return [];
      }
    } on Exception {
      print('fetchCities() failed');
      return [];
    }
  }
}
