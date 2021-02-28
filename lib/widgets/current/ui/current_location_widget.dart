import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/home/location/ui/details_route.dart';
import 'package:weather_app/presentation/assets.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:weather_app/widgets/current/cubit/current_location_cubit.dart';
import 'package:weather_app/widgets/current/cubit/current_location_repository.dart';
import 'package:weather_app/widgets/current/cubit/current_location_state.dart';
import 'package:weather_app/widgets/error_text_widget.dart';
import 'package:weather_app/widgets/weather_widget.dart';

class CurrentLocationWidget extends StatelessWidget {
  const CurrentLocationWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CurrentLocationRepository repository = Provider.of(context);

    return BlocProvider(
      create: (_) => CurrentLocationCubit(repository),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<CurrentLocationCubit, CurrentLocationState>(
          builder: (context, state) {
            context.read<CurrentLocationCubit>().init();

            if (state is Initial || state is Loading)
              return _buildLoading();
            else if (state is Success)
              return _buildCurrentLocation(context, state);
            else if (state is Error)
              return _buildError(context, state.message);
            else
              return Image(image: CustomAssets().getLogo());
          },
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return Stack(
      children: [
        const Center(child: const CircularProgressIndicator()),
        Positioned(
          left: 0,
          right: 0,
          bottom: 60,
          child: FadeAnimatedTextKit(
            repeatForever: true,
            text: [Strings().gettingYourLocalizationWeather],
            textStyle: CustomTextStyle.montserratSemiBold14,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildCurrentLocation(BuildContext context, Success state) {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: Column(
        children: [
          _buildLocationName(state),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, DetailsRoute.routeName,
                arguments: DetailsModel(state.location,
                    currentWeather: state.weather)),
            child: Hero(
              tag: Strings.heroCurrentWeatherAnimation,
              child: Material(child: WeatherWidget(state.weather)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildError(BuildContext context, String errorMsg) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ErrorTextWidget(
            "${Strings().cantDisplayYourLocationWeather}\n$errorMsg"),
        MaterialButton(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white, width: 1.5),
            borderRadius: BorderRadius.circular(16.0),
          ),
          onPressed: () =>
              context.read<CurrentLocationCubit>().fetchCurrentLocation(),
          child: Text(
            Strings().retry,
            style: CustomTextStyle.montserratRegular16,
          ),
        ),
      ],
    );
  }

  Row _buildLocationName(Success state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.location_on_rounded),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(state.location.localizedName,
              style: CustomTextStyle.montserratBold20),
        ),
      ],
    );
  }
}
