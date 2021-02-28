import 'package:flutter/material.dart';
import 'package:weather_app/home/cubit/home_cubit.dart';
import 'package:weather_app/home/location/ui/details_route.dart';
import 'package:weather_app/models/location/location_model.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchTile extends StatelessWidget {
  const SearchTile(this._location, {Key key}) : super(key: key);

  final Location _location;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(color: Colors.white, width: 1.5),
      ),
      child: ListTile(
        onTap: () async {
          await Navigator.pushNamed(context, DetailsRoute.routeName,
              arguments: DetailsModel(_location));
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
