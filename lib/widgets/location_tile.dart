import 'package:flutter/material.dart';
import 'package:weather_app/home/cubit/home_cubit.dart';
import 'package:weather_app/home/location/ui/location_route.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/presentation/color.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationTile extends StatelessWidget {
  const LocationTile(this._location, {Key key}) : super(key: key);

  final Location _location;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      color: CustomColor.charlestonGreen,
      child: ListTile(
        onTap: () async {
          await Navigator.pushNamed(context, LocationRoute.routeName,
              arguments: _location);
          context.read<HomeCubit>().insertLocation(_location);
        },
        title: Text(
          _location.localizedName,
          style: CustomTextStyle.montserratBold18,
        ),
        subtitle: Text(
          '${_location.administrativeArea.localizedName}, ${_location.country.id}',
          style: CustomTextStyle.montserratRegular16,
        ),
      ),
    );
  }
}
