import 'package:dio/dio.dart';

class WebService {
  static WebService _instance;
  static Dio _dio;

  WebService._internal();

  factory WebService() {
    if (_instance == null) _instance = WebService._internal();

    return _instance;
  }

  Dio getDio() {
    if (_dio == null) {
      _dio = Dio();
      final String baseUrl = 'http://dataservice.accuweather.com/';
      _dio.options.responseType = ResponseType.json;
      _dio.options.connectTimeout = 30000;
      _dio.options.receiveTimeout = 30000;
      _dio.options.baseUrl = baseUrl;
      _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        requestHeader: false,
        responseBody: true,
        responseHeader: false,
      ));
    }
    return _dio;
  }
}
