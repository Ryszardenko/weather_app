import 'package:flutter/material.dart';
import 'package:weather_app/home/location/cubit/location_cubit.dart';
import 'package:weather_app/home/location/cubit/location_state.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/widgets/location_widget.dart';

class LocationRoute extends StatelessWidget {
  const LocationRoute({Key key}) : super(key: key);
  static const routeName = '/location';

  @override
  Widget build(BuildContext context) {
    final Location location = ModalRoute.of(context).settings.arguments;
    final LocationCubit cubit = context.watch();
    cubit.init(location.key);

    return Scaffold(
      appBar: _buildAppBar(context, location),
      body: Column(
        children: [
          _buildLocationBox(),
        ],
      ),
    );
  }

  Widget _buildLocationBox() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: BlocBuilder<LocationCubit, LocationState>(
          builder: (context, state) {
            if (state is Success)
              return LocationWidget(state.weather);
            else if (state is Error)
              return Text(
                state.message,
                style: CustomTextStyle.montserratMedium18,
              );
            else
              return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, Location location) {
    return AppBar(
      title: Text(location.localizedName,
          style: CustomTextStyle.montserratSemiBold20),
      leading: _buildBackIcon(context),
    );
  }

  GestureDetector _buildBackIcon(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Icon(Icons.arrow_back),
    );
  }
}
