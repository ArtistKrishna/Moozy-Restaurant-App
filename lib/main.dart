import 'package:flutter/material.dart';

import 'package:moozy_restaurant_app/services/routes.dart';
import 'package:moozy_restaurant_app/services/themePage.dart';

import 'screens/splashScreen/splashScreen.dart';

void main() {
  runApp(MoozyRestaurantApp());
}

class MoozyRestaurantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Moozy Restaurant App",
        theme: theme(),
        home: SplashScreen(),
        routes: routes);
  }
}
