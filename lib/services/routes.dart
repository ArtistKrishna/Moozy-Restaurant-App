import 'package:flutter/material.dart';
import 'package:moozy_restaurant_app/screens/homePage/homePage.dart';
import 'package:moozy_restaurant_app/screens/profile/profile_screen.dart';

//All routes here according to screens

final Map<String, WidgetBuilder> routes = {
  "HomePageScreen": (context) => HomePage(),
  "ProfileScreen": (context) => ProfileScreen(),
};
