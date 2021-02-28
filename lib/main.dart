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
          HomeRoute.routeName: (context) {
            initGlobalAppLocalizations(context);
            return _homeRouteProvider(database);
          },
          DetailsRoute.routeName: (_) => _detailsRouteProvider(),
        },
      ),
    );
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
    ///W klasach, któe nie mają dostępu do contextu chciałem mieć dostęp do lokalizacji.
    ///Mogłbym oczywiście go przekazywać, ale obecny sposób wydaje mi się "lżejszy".
    ///Wiem, że nie jest to idealne rozwiązanie, ale mam pewnosć, że HomeRoute nie zniknie z WidgetTree.

    if (localizations == null) localizations = AppLocalizations.of(context);
  }
}
