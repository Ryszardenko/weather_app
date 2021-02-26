import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:weather_app/home/cubit/home_cubit.dart';
import 'package:weather_app/home/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/color.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:weather_app/widgets/location_tile.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key key}) : super(key: key);
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.watch();

    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is Error) Fluttertoast.showToast(msg: state.message);
      },
      child: Scaffold(
        // backgroundColor: Colors.black,
        body: SafeArea(
          child: _buildSearchBar(cubit),
        ),
      ),
    );
  }

  FloatingSearchBar _buildSearchBar(HomeCubit cubit) {
    return FloatingSearchBar(
      backgroundColor: CustomColor.charlestonGreen,
      controller: cubit.searchController,
      transition: CircularFloatingSearchBarTransition(),
      physics: const BouncingScrollPhysics(),
      automaticallyImplyBackButton: false,
      hint: Strings.findCity,
      hintStyle: CustomTextStyle.montserratMedium12,
      queryStyle: CustomTextStyle.montserratMedium14,
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      debounceDelay: const Duration(milliseconds: 400),
      onQueryChanged: (query) => cubit.searchCities(cityName: query),
      builder: (context, transition) => _buildSearchResult(),
      body: _buildBody(),
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
            '${Strings.notFound} ${state.query}',
            style: CustomTextStyle.montserratBold18,
          );
        else
          return const SizedBox();
      },
    );
  }

  Container _buildLocationList(BuildContext context, Success state) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      child: ListView.separated(
        separatorBuilder: (context, index) => Container(
          height: 1,
          color: Colors.black,
        ),
        shrinkWrap: true,
        itemCount: state.locations.length,
        itemBuilder: (context, index) {
          final location = state.locations[index];
          return LocationTile(location: location);
        },
      ),
    );
  }

  Widget _buildBody() {
    return Center(
        child: Container(
      height: 200,
      width: 200,
      color: Colors.cyan,
    ));
  }
}
