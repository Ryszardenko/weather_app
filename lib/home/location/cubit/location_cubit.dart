import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_app/home/location/cubit/location_repository.dart';
import 'package:weather_app/models/weather/current/current_weather_model.dart';
import 'package:weather_app/services/api_service.dart';
import 'location_state.dart';
import 'package:weather_app/extensions/task_extensions.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit(this._repository) : super(LocationState.initial());

  final LocationRepository _repository;

  void init(String locationKey) {
    if (state is Initial) fetchCurrentWeather(locationKey);
  }

  Future<void> fetchCurrentWeather(String locationKey) async {
    emit(LocationState.loading());

    final Either<Failure, CurrentWeather> response = await Task<CurrentWeather>(
            () => _repository.fetchCurrentWeather(locationKey))
        .attempt()
        .mapLeftToFailure()
        .run();

    response.fold(
      (failure) => emit(LocationState.error(failure.message)),
      (weather) => emit(LocationState.success(weather)),
    );
  }
}
