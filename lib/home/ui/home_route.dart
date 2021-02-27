import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/home/cubit/home_cubit.dart';
import 'package:weather_app/home/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/color.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:weather_app/widgets/current/ui/current_location_widget.dart';
import 'package:weather_app/widgets/history/ui/history_widget.dart';
import 'package:weather_app/widgets/location_tile.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key key}) : super(key: key);
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.watch();

    return Scaffold(
      body: SafeArea(
        child: FloatingSearchBar(
          backgroundColor: CustomColor.charlestonGreen,
          transition: CircularFloatingSearchBarTransition(),
          physics: const BouncingScrollPhysics(),
          automaticallyImplyBackButton: false,
          hint: Strings().getString(Strings.findCity),
          hintStyle: CustomTextStyle.montserratMedium12,
          queryStyle: CustomTextStyle.montserratMedium14,
          transitionDuration: const Duration(milliseconds: 800),
          transitionCurve: Curves.easeInOut,
          debounceDelay: const Duration(milliseconds: 400),
          onQueryChanged: (query) => cubit.searchCities(cityName: query),
          builder: (context, transition) => _buildSearchResult(),
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
          return _buildLocationList(context, state);
        else if (state is NotFound)
          return Text(
            '${Strings().getString(Strings.notFound)} ${state.query}',
            style: CustomTextStyle.montserratBold18,
          );
        else if (state is Error)
          return ErrorWidget(state.message);
        else
          return const SearchHistoryWidget();
      },
    );
  }

  Container _buildLocationList(BuildContext context, Success state) {
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
          return LocationTile(location);
        },
      ),
    );
  }
}
