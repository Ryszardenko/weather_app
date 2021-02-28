import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/widgets/history/cubit/history_repository.dart';
import 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit(this._repository) : super(HistoryState.initial());

  final HistoryRepository _repository;

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
      emit(HistoryState.loading());

      if (event?.isEmpty == true)
        emit(HistoryState.empty());
      else if (event?.isNotEmpty == true) {
        String encoded = jsonEncode(event);
        List<dynamic> decoded = jsonDecode(encoded);
        final locations =
            List<Location>.from(decoded.map((e) => Location.fromJson(e)));
        emit(HistoryState.success(locations));
      } else
        emit(HistoryState.error(Strings().errorTryAgainLater));
    });
  }

  Future<void> clearHistory() => _repository.clearHistory();
}
