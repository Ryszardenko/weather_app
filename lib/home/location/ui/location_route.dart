import 'package:flutter/material.dart';
import 'package:weather_app/home/location/cubit/location_cubit.dart';
import 'package:weather_app/home/location/cubit/location_state.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/widgets/hour/ui/hourly_forecast_widget.dart';
import 'package:weather_app/widgets/weather_widget.dart';

class LocationRoute extends StatelessWidget {
  const LocationRoute({Key key}) : super(key: key);
  static const routeName = '/location';

  @override
  Widget build(BuildContext context) {
    final Location location = ModalRoute.of(context).settings.arguments;
    final LocationCubit cubit = context.watch();
    cubit.init(location.key);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildLocationName(location),
              _buildLocationBox(),
              HourlyForecastWidget(location.key),
            ],
          ),
        ),
      ),
    );
  }

  Text _buildLocationName(Location location) {
    return Text(location.localizedName,
        style: CustomTextStyle.montserratBold20);
  }

  Widget _buildLocationBox() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 260),
        child: Center(
          child: BlocBuilder<LocationCubit, LocationState>(
            builder: (context, state) {
              if (state is Success)
                return WeatherWidget(state.weather);
              else if (state is Error)
                return ErrorWidget(state.message);
              else
                return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}