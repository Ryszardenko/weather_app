import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/widgets/history/cubit/history_repository.dart';
import 'history_state.dart';

class SearchHistoryCubit extends Cubit<SearchHistoryState> {
  SearchHistoryCubit(this._repository) : super(SearchHistoryState.initial());

  final SearchHistoryRepository _repository;

  StreamSubscription _subscription;

  void init() {
    if (state is Initial) watchSearchedHistory();
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }

  void watchSearchedHistory() {
    _subscription =
        _repository.watchRecentlySearchedLocations().listen((event) {
      emit(SearchHistoryState.loading());
      print('event ${event.length}');

      if (event?.isEmpty == true)
        emit(SearchHistoryState.empty());
      else if (event?.isNotEmpty == true) {
        String encoded = jsonEncode(event);
        List<dynamic> decoded = jsonDecode(encoded);
        final locations =
            List<Location>.from(decoded.map((e) => Location.fromJson(e)));
        emit(SearchHistoryState.success(locations));
      } else
        emit(SearchHistoryState.error('error'));

      print(state);
    });
  }
}
