import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_app/home/location/cubit/details_repository.dart';
import 'package:weather_app/models/weather/current/current_weather_model.dart';
import 'package:weather_app/services/api_service.dart';
import 'details_state.dart';
import 'package:weather_app/extensions/task_extensions.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this._repository) : super(DetailsState.initial());

  final DetailsRepository _repository;

  void init(String locationKey) {
    if (state is Initial) _fetchCurrentWeather(locationKey);
  }

  Future<void> _fetchCurrentWeather(String locationKey) async {
    emit(DetailsState.loading());

    final Either<Failure, CurrentWeather> response = await Task<CurrentWeather>(
            () => _repository.fetchCurrentWeather(locationKey))
        .attempt()
        .mapLeftToFailure()
        .run();

    response.fold(
      (failure) => emit(DetailsState.error(failure.message)),
      (weather) => emit(DetailsState.success(weather)),
    );
  }
}
