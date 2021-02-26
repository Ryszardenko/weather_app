import 'package:flutter/material.dart';
import 'package:weather_app/home/location/ui/location_route.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/presentation/color.dart';
import 'package:weather_app/presentation/text_style.dart';

class LocationTile extends StatelessWidget {
  const LocationTile({
    Key key,
    @required Location location,
  })  : _location = location,
        super(key: key);

  final Location _location;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, LocationRoute.routeName, arguments: _location),
      tileColor: CustomColor.charlestonGreen,
      title: Text(
        _location.localizedName,
        style: CustomTextStyle.montserratBold18,
      ),
      subtitle: Text(
        '${_location.administrativeArea.localizedName}, ${_location.country.id}',
        style: CustomTextStyle.montserratRegular16,
      ),
    );
  }
}
