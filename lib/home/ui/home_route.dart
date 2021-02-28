import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/home/cubit/home_cubit.dart';
import 'package:weather_app/home/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:weather_app/widgets/current/ui/current_location_widget.dart';
import 'package:weather_app/widgets/error_text_widget.dart';
import 'package:weather_app/widgets/footer_widget.dart';
import 'package:weather_app/widgets/history/ui/history_widget.dart';
import 'package:weather_app/widgets/search_tile.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key key}) : super(key: key);
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.watch();

    return Scaffold(
      bottomSheet: FooterWidget(),
      body: SafeArea(
        child: FloatingSearchBar(
          backgroundColor: Colors.black,
          borderRadius: BorderRadius.circular(32.0),
          border: BorderSide(color: Colors.white, width: 1.5),
          transition: CircularFloatingSearchBarTransition(),
          physics: const BouncingScrollPhysics(),
          automaticallyImplyBackButton: false,
          backdropColor: Colors.black,
          hint: Strings().findCity,
          hintStyle: CustomTextStyle.montserratMedium14,
          queryStyle: CustomTextStyle.montserratMedium14,
          transitionDuration: const Duration(milliseconds: 800),
          transitionCurve: Curves.easeInOut,
          debounceDelay: const Duration(milliseconds: 600),
          onQueryChanged: (query) => cubit.searchCities(cityName: query),
          builder: (context, transition) => _buildSearchResult(),
          margins: const EdgeInsets.all(16),
          body: const CurrentLocationWidget(),
        ),
      ),
    );
  }

  BlocBuilder<HomeCubit, HomeState> _buildSearchResult() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is Loading)
          return const CircularProgressIndicator();
        else if (state is Success)
          return _buildSearchList(context, state);
        else if (state is NotFound)
          return Text(
            '${Strings().notFound} ${state.query}',
            style: CustomTextStyle.montserratBold18,
          );
        else if (state is Error)
          return ErrorTextWidget(state.message);
        else
          return const HistoryWidget();
      },
    );
  }

  Container _buildSearchList(BuildContext context, Success state) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: ListView.separated(
        separatorBuilder: (context, index) => Container(
          height: 2,
          color: Colors.black,
        ),
        shrinkWrap: true,
        itemCount: state.locations.length,
        itemBuilder: (context, index) {
          final location = state.locations[index];
          return SearchTile(location);
        },
      ),
    );
  }
}
