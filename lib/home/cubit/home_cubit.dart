import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:weather_app/home/cubit/home_repository.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/services/api_service.dart';
import 'home_state.dart';
import 'package:weather_app/extensions/task_extensions.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repository) : super(HomeState.initial());

  final HomeRepository _repository;

  final searchController = FloatingSearchBarController();

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }

  Future<void> searchCities({String cityName}) async {
    emit(HomeState.loading());

    if (cityName?.isEmpty == true)
      emit(HomeState.initial());
    else if (cityName.length > 2) {
      if (isCityNameValid(cityName)) {
        final response = await fetchCities(cityName);
        response.fold(
          (failure) => emit(HomeState.error(failure.message)),
          (locations) {
            if (locations.isNotEmpty)
              emit(HomeState.success(locations));
            else
              emit(HomeState.notFound(cityName));
          },
        );
      } else {
        emit(HomeState.error(Strings.invalidCityName));
      }
    }
  }

  Future<Either<Failure, List<Location>>> fetchCities(String cityName) async =>
      await Task<List<Location>>(() => _repository.fetchCities(cityName))
          .attempt()
          .mapLeftToFailure()
          .run();

  bool isCityNameValid(String cityName) =>
      RegExp(r'^[a-zA-ZąĄęĘóÓżŻźŹćĆłŁśŚ]+$').hasMatch(cityName);
}
