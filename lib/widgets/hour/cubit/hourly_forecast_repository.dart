import 'package:weather_app/models/weather/hourly/hourly_forecast_model.dart';
import 'package:weather_app/services/api_service.dart';

class HourlyForecastRepository {

  Future<List<HourlyForecast>> fetch12hForecast(String locationKey) =>
      ApiService().fetch12hForecast(locationKey);
}
