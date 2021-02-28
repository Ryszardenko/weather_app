import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather/hourly/hourly_forecast_model.dart';
import 'package:weather_app/presentation/assets.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:weather_app/extensions/double_extensions.dart';
import 'package:weather_app/extensions/string_extensions.dart';
import 'package:weather_app/widgets/hour/cubit/hourly_forecast_cubit.dart';
import 'package:weather_app/widgets/hour/cubit/hourly_forecast_repository.dart';
import 'package:weather_app/widgets/hour/cubit/hourly_forecast_state.dart';
import '../../error_text_widget.dart';

class HourlyForecastWidget extends StatelessWidget {
  const HourlyForecastWidget(this._locationKey);

  final String _locationKey;

  @override
  Widget build(BuildContext context) {
    final HourlyForecastRepository repository = Provider.of(context);

    return BlocProvider(
      create: (_) => HourlyForecastCubit(repository),
      child: Container(
        height: 160,
        child: Center(
          child: BlocBuilder<HourlyForecastCubit, HourlyForecastState>(
            builder: (context, state) {
              context.read<HourlyForecastCubit>().init(_locationKey);

              if (state is Initial || state is Loading)
                return const CircularProgressIndicator();
              else if (state is Success)
                return _buildForecasts(state.forecasts);
              else if (state is Error)
                return ErrorTextWidget(
                    '${Strings().cantDisplayHourlyForecast}\n${state.message}');
              else
                return const SizedBox();
            },
          ),
        ),
      ),
    );
  }

  ListView _buildForecasts(List<HourlyForecast> forecasts) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: forecasts.length,
      itemBuilder: (context, index) {
        final forecast = forecasts[index];
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildHour(forecast.dateTime),
                  _buildImage(forecast.weatherIcon),
                  _buildTemperature(forecast.temperature.value),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHour(String date) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        date.to24hTime(),
        style: CustomTextStyle.montserratMedium14,
      ),
    );
  }

  Widget _buildImage(int iconNr) {
    return Image(
      image: CustomAssets().getIcon(iconNr),
      height: 40,
      fit: BoxFit.fitHeight,
    );
  }

  Widget _buildTemperature(double temperature) {
    return Text(
      '$temperature°C',
      style: CustomTextStyle.montserratSemiBold14
          .copyWith(color: temperature.setColorDependsOnValue()),
    );
  }
}
