import 'package:flutter/material.dart';
import 'package:formula_one_app/utils/constants/router_constants.dart';
import 'package:formula_one_app/views/driver/driver_detail/driver_detail_view.dart';

import '../../views/category/category_view.dart';
import '../../views/driver/driver_standings_view.dart';
import '../../views/home/home_view.dart';
import '../../views/splash/splash_view.dart';
import '../../views/team/team_detail_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case homeViewRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case splashViewRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case categoryViewRoute:
        return MaterialPageRoute(builder: (_) => const CategoryView());
      case driverStandingsViewRoute:
        return MaterialPageRoute(builder: (_) => const DriverStandingsView());
      case teamStandingsViewRoute:
        return MaterialPageRoute(builder: (_) => const TeamStandingsView());
      case driverDetailViewRoute:
        return MaterialPageRoute(builder: (_) => const DriverDetailView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('${routeSettings.name} is not a route'),
            ),
          ),
        );
    }
  }
}
