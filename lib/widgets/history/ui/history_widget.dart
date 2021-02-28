import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:weather_app/widgets/error_text_widget.dart';
import 'package:weather_app/widgets/history/cubit/history_cubit.dart';
import 'package:weather_app/widgets/history/cubit/history_state.dart';
import 'package:weather_app/widgets/history/cubit/history_repository.dart';
import 'package:weather_app/widgets/search_tile.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HistoryRepository repository = Provider.of(context);

    return BlocProvider(
      create: (_) => HistoryCubit(repository),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: BlocBuilder<HistoryCubit, HistoryState>(
            builder: (context, state) {
              context.read<HistoryCubit>().init();

              if (state is Success)
                return _buildHistoryList(context, state);
              else if (state is Error)
                return ErrorTextWidget(state.message);
              else if (state is Empty)
                return _buildTitle(Strings().noSearchHistory);
              else
                return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

  Container _buildHistoryList(BuildContext context, Success state) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildTitle(Strings().recentlySearched),
              const Spacer(),
              InkWell(
                  onTap: () => context.read<HistoryCubit>().clearHistory(),
                  child: Icon(Icons.highlight_remove_outlined, size: 32.0)),
            ],
          ),
          ListView.separated(
            separatorBuilder: (context, index) => Container(
              height: 2,
              color: Colors.black,
            ),
            shrinkWrap: true,
            itemCount: state.locations.length,
            itemBuilder: (context, index) {
              return SearchTile(state.locations[index]);
            },
          )
        ],
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Text(
      text,
      style: CustomTextStyle.montserratBold18,
    );
  }
}
