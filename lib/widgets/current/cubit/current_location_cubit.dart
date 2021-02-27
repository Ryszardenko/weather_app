import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/models/weather/current/current_weather_model.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/services/api_service.dart';
import 'package:weather_app/widgets/current/cubit/current_location_repository.dart';
import 'current_location_state.dart';
import 'package:weather_app/extensions/task_extensions.dart';

class CurrentLocationCubit extends Cubit<CurrentLocationState> {
  CurrentLocationCubit(this._repository)
      : super(CurrentLocationState.initial());

  final CurrentLocationRepository _repository;

  void init() {
    if (state is Initial) fetchCurrentLocation();
  }

  Future<void> fetchCurrentLocation() async {
    emit(CurrentLocationState.loading());

    final position = await _determinePosition();

    final Either<Failure, Location> response =
        await Task<Location>(() => _repository.fetchCurrentLocation(
              position.latitude,
              position.longitude,
            )).attempt().mapLeftToFailure().run();

    response.fold(
      (failure) => emit(CurrentLocationState.error(failure.message)),
      (location) =>
          fetchCurrentLocationWeather(location.key, location.localizedName),
    );
  }

  Future<void> fetchCurrentLocationWeather(
      String locationKey, String locationName) async {
    final Either<Failure, CurrentWeather> response = await Task<CurrentWeather>(
            () => _repository.fetchCurrentWeather(locationKey))
        .attempt()
        .mapLeftToFailure()
        .run();

    response.fold(
      (failure) => emit(CurrentLocationState.error(failure.message)),
      (weather) => emit(CurrentLocationState.success(locationName, weather)),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled)
      emit(CurrentLocationState.error(
          Strings().getString(Strings.locationServicesDisabled)));

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever)
      emit(
        CurrentLocationState.error(
            Strings().getString(Strings.locationPermissionsPermanentlyDenied)),
      );

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always)
        emit(CurrentLocationState.error(
            '${Strings().getString(Strings.locationPermissionsPermanentlyDenied)} $permission'));
    }

    return await Geolocator.getCurrentPosition();
  }
}
