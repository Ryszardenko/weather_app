import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/database/appdatabase.dart';
import 'package:weather_app/home/cubit/home_cubit.dart';
import 'package:weather_app/home/cubit/home_repository.dart';
import 'package:weather_app/home/location/cubit/details_cubit.dart';
import 'package:weather_app/home/location/cubit/details_repository.dart';
import 'package:weather_app/home/location/ui/details_route.dart';
import 'package:weather_app/home/ui/home_route.dart';
import 'package:weather_app/presentation/app_localizations.dart';
import 'package:weather_app/presentation/color.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/widgets/current/cubit/current_location_repository.dart';
import 'package:weather_app/widgets/history/cubit/history_repository.dart';
import 'package:weather_app/widgets/hour/cubit/hourly_forecast_repository.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static AppLocalizations localizations;

  @override
  Widget build(BuildContext context) {
    final database = AppDatabase();

    final supportedLocales = [
      Locale('en', 'US'),
      Locale('pl', 'PL'),
    ];

    final localizationsDelegates = [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ];

    return MultiProvider(
      providers: [
        Provider(create: (_) => HistoryRepository(database)),
        Provider(create: (_) => HourlyForecastRepository()),
        Provider(create: (_) => CurrentLocationRepository()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Strings.appName,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: CustomColor.whiteSmoke,
          canvasColor: Colors.black,
          iconTheme: IconThemeData(color: CustomColor.whiteSmoke),
        ),
        supportedLocales: supportedLocales,
        localizationsDelegates: localizationsDelegates,
        localeResolutionCallback: (locale, supportedLocales) =>
            _localeResolutionCallback(locale, supportedLocales),
        initialRoute: HomeRoute.routeName,
        routes: {
          HomeRoute.routeName: (context) {
            initGlobalAppLocalizations(context);
            return _homeRouteProvider(database);
          },
          DetailsRoute.routeName: (_) => _detailsRouteProvider(),
        },
      ),
    );
  }

  Locale _localeResolutionCallback(
      Locale locale, Iterable<Locale> supportedLocales) {
    for (final supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale?.languageCode &&
          supportedLocale.countryCode == locale?.countryCode) {
        return supportedLocale;
      }
    }
    return supportedLocales.first;
  }

  Widget _homeRouteProvider(AppDatabase database) => BlocProvider(
        create: (context) => HomeCubit(HomeRepository(database)),
        child: const HomeRoute(),
      );

  Widget _detailsRouteProvider() => BlocProvider(
        create: (_) => DetailsCubit(const DetailsRepository()),
        child: const DetailsRoute(),
      );

  void initGlobalAppLocalizations(BuildContext context) {
    /// In classes that don't have access to context, I wanted to have access to the localization.
    /// I could of course pass context on, but the current way seems "lighter" to me.
    /// I know this is not a perfect solution, but I am sure HomeRoute will not disappear from WidgetTree.
    if (localizations == null) localizations = AppLocalizations.of(context);
  }
}
