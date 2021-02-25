import 'package:bloc/bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:weather_app/home/cubit/home_repository.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repository) : super(HomeState.initial());

  final HomeRepository _repository;

  final searchController = FloatingSearchBarController();

  void init() {
    if (state is Initial) {}
  }

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }

  Future<void> fetchCities({String cityName}) async {
    if (cityName == null || cityName.isEmpty)
      emit(HomeState.initial());
    else if (cityName.length > 2) {
      bool isValid = RegExp(r'^[a-zA-ZąĄęĘóÓżŻźŹćĆłŁśŚ]+$').hasMatch(cityName);
      if (isValid) {
        emit(HomeState.loading());
        final cities = await _repository.fetchCities(cityName: cityName);

        if (cities?.isNotEmpty == true)
          emit(HomeState.success(cities));
        else
          emit(HomeState.notFound(cityName));
      } else {
        emit(HomeState.error('error'));
      }
    }
  }
}
