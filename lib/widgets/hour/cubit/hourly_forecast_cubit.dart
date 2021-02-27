import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_app/models/weather/hourly/hourly_forecast_model.dart';
import 'package:weather_app/services/api_service.dart';
import 'package:weather_app/widgets/hour/cubit/hourly_forecast_repository.dart';
import 'hourly_forecast_state.dart';
import 'package:weather_app/extensions/task_extensions.dart';

class HourlyForecastCubit extends Cubit<HourlyForecastState> {
  HourlyForecastCubit(this._repository) : super(HourlyForecastState.initial());

  HourlyForecastRepository _repository;

  void init(String locationKey) {
    if (state is Initial) fetch12hForecast(locationKey);
  }

  Future<void> fetch12hForecast(String locationKey) async {
    emit(HourlyForecastState.loading());

    final Either<Failure, List<HourlyForecast>> response =
        await Task<List<HourlyForecast>>(
                () => _repository.fetch12hForecast(locationKey))
            .attempt()
            .mapLeftToFailure()
            .run();

    response.fold(
      (failure) => emit(HourlyForecastState.error(failure.message)),
      (forecasts) => emit(HourlyForecastState.success(forecasts)),
    );
  }
}
