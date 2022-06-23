import 'package:flutter/material.dart';
import 'package:formula_one_app/theme/theme.dart';
import 'package:formula_one_app/utils/constants/router_constants.dart';
import 'core/router/route.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.Router.generateRoute,
      initialRoute: driverStandingsViewRoute,
    );
  }
}
