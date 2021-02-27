import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:weather_app/widgets/history/cubit/history_cubit.dart';
import 'package:weather_app/widgets/history/cubit/history_state.dart';
import 'package:weather_app/widgets/history/cubit/history_repository.dart';
import 'package:weather_app/widgets/location_tile.dart';

class SearchHistoryWidget extends StatelessWidget {
  const SearchHistoryWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SearchHistoryRepository repository = Provider.of(context);

    return BlocProvider(
      create: (_) => SearchHistoryCubit(repository),
      child: Center(
        child: BlocBuilder<SearchHistoryCubit, SearchHistoryState>(
          builder: (context, state) {
            context.read<SearchHistoryCubit>().init();

            if (state is Success)
              return _buildHistoryList(context, state);
            else if (state is Error)
              return ErrorWidget(state.message);
            else if (state is Empty)
              return _buildText(Strings.noSearchHistory);
            else
              return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Container _buildHistoryList(BuildContext context, Success state) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildText(Strings.recentlySearched),
          ListView.separated(
            separatorBuilder: (context, index) => Container(
              height:2,
              color: Colors.black,
            ),
            shrinkWrap: true,
            itemCount: state.locations.length,
            itemBuilder: (context, index) {
             return LocationTile(state.locations[index]);
            },
          )
        ],
      ),
    );
  }

  Text _buildText(String stringKey) {
    return Text(
      Strings().getString(stringKey),
      style: CustomTextStyle.montserratBold18,
    );
  }
}
