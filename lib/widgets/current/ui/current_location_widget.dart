import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:weather_app/widgets/current/cubit/current_location_cubit.dart';
import 'package:weather_app/widgets/current/cubit/current_location_repository.dart';
import 'package:weather_app/widgets/current/cubit/current_location_state.dart';
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
        child: Center(
          child: BlocBuilder<CurrentLocationCubit, CurrentLocationState>(
            builder: (context, state) {
              context.read<CurrentLocationCubit>().init();

              if (state is Initial || state is Loading)
                return _buildText(Strings()
                    .getString(Strings.gettingYourLocalizationWeather));
              else if (state is Success)
                return _buildCurrentLocation(state);
              else if (state is Error)
                return ErrorWidget(state.message);
              else
                return const SizedBox();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildCurrentLocation(Success state) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        _buildText(
            '${Strings().getString(Strings.youAreIn)} ${state.locationName}'),
        WeatherWidget(state.weather),
      ],
    );
  }

  Widget _buildText(String text) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(text, style: CustomTextStyle.montserratBold20));
  }
}
