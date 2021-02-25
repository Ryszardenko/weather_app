import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:weather_app/home/cubit/home_cubit.dart';
import 'package:weather_app/home/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/color.dart';
import 'package:weather_app/presentation/text_style.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key key}) : super(key: key);
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.watch();
    cubit.init();

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: FloatingSearchBar(
          backgroundColor: CustomColor.charlestonGreen,
          controller: cubit.searchController,
          borderRadius: const BorderRadius.all(Radius.circular(32.0)),
          transition: CircularFloatingSearchBarTransition(),
          physics: const BouncingScrollPhysics(),
          automaticallyImplyBackButton: false,
          hint: 'Wyszukaj miasto',
          hintStyle: CustomTextStyle.montserratMedium12,
          queryStyle: CustomTextStyle.montserratMedium14,
          iconColor: Colors.orange,
          accentColor: Colors.orange,
          transitionDuration: const Duration(milliseconds: 800),
          transitionCurve: Curves.easeInOut,
          debounceDelay: const Duration(milliseconds: 1000),
          onQueryChanged: (query) => cubit.fetchCities(cityName: query),
          builder: (context, transition) {
            return BlocConsumer<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is Loading)
                  return const CircularProgressIndicator();
                else if (state is Success)
                  return ListView.separated(
                    separatorBuilder: (context, index) => Divider(height: 1),
                    shrinkWrap: true,
                    itemCount: state.locations.length,
                    itemBuilder: (context, index) {
                      final city = state.locations[index];
                      return ListTile(
                        tileColor: CustomColor.charlestonGreen,
                        title: Text(
                          city.localizedName,
                          style: CustomTextStyle.montserratBold18,
                        ),
                        subtitle: Text(
                          '${city.administrativeArea.localizedName}, ${city.country.id}',
                          style: CustomTextStyle.montserratRegular16,
                        ),
                      );
                    },
                  );
                else if (state is NotFound)
                  return Text(
                    'Not found city ${state.query}',
                    style: CustomTextStyle.montserratBold18,
                  );
                else
                  return const SizedBox();
              },
              listener: (context, state) {
                if (state is Error) Fluttertoast.showToast(msg: state.message);
              },
            );
          },
          body: Center(
              child: Container(
            height: 200,
            width: 200,
            color: Colors.cyan,
          )),
        ),
      ),
    );
  }
}
