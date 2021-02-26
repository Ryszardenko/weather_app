import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:weather_app/home/cubit/home_cubit.dart';
import 'package:weather_app/home/cubit/home_repository.dart';
import 'package:weather_app/home/location/cubit/location_cubit.dart';
import 'package:weather_app/home/location/cubit/location_repository.dart';
import 'package:weather_app/home/location/ui/location_route.dart';
import 'package:weather_app/home/ui/home_route.dart';
import 'package:weather_app/presentation/app_localizations.dart';
import 'package:weather_app/presentation/color.dart';
import 'package:weather_app/presentation/strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: CustomColor.charlestonGreen),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: CustomColor.whiteSmoke,
        canvasColor: Colors.black,
        iconTheme: IconThemeData(color: CustomColor.whiteSmoke),
      ),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('pl', 'PL'),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (final supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      initialRoute: HomeRoute.routeName,
      routes: {
        HomeRoute.routeName: (_) => _homeRouteProvider(),
        LocationRoute.routeName: (_) => _locationRouteProvider(),
      },
    );
  }

  Widget _homeRouteProvider() => BlocProvider(
        create: (_) => HomeCubit(const HomeRepository()),
        child: const HomeRoute(),
      );

  Widget _locationRouteProvider() => BlocProvider(
        create: (_) => LocationCubit(const LocationRepository()),
        child: const LocationRoute(),
      );
}
