import 'package:flutter/material.dart';
import 'package:formula_one_app/utils/constants/router_constants.dart';
import 'core/router/route.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.Router.generateRoute,
      initialRoute: splashViewRoute,
    );
  }
}
