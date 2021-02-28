import 'package:flutter/material.dart';
import 'package:weather_app/home/location/cubit/details_cubit.dart';
import 'package:weather_app/home/location/cubit/details_state.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/models/weather/current/current_weather_model.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/widgets/error_text_widget.dart';
import 'package:weather_app/widgets/footer_widget.dart';
import 'package:weather_app/widgets/hour/ui/hourly_forecast_widget.dart';
import 'package:weather_app/widgets/weather_widget.dart';

class DetailsRoute extends StatelessWidget {
  const DetailsRoute({Key key}) : super(key: key);
  static const routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final DetailsModel model = ModalRoute.of(context).settings.arguments;
    _init(context, model);

    return Scaffold(
      bottomSheet: FooterWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildLocationName(model.location),
              _buildLocationBox(model.currentWeather),
              HourlyForecastWidget(model.location.key),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLocationName(Location location) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(location.localizedName,
          style: CustomTextStyle.montserratSemiBold20),
    );
  }

  Widget _buildLocationBox(CurrentWeather currentWeather) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 260),
        child: Center(
          child: currentWeather != null
              ? Hero(
                  tag: Strings.heroCurrentWeatherAnimation,
                  child: Material(child: WeatherWidget(currentWeather)),
                )
              : BlocBuilder<DetailsCubit, DetailsState>(
                  builder: (context, state) {
                    if (state is Success)
                      return WeatherWidget(state.weather);
                    else if (state is Error)
                      return ErrorTextWidget(state.message);
                    else
                      return const CircularProgressIndicator();
                  },
                ),
        ),
      ),
    );
  }

  void _init(BuildContext context, DetailsModel model) {
    if (model.currentWeather == null)
      context.read<DetailsCubit>().init(model.location.key);
  }
}

class DetailsModel {
  DetailsModel(this.location, {this.currentWeather});

  final Location location;
  final CurrentWeather currentWeather;
}
