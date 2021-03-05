import 'package:flutter/material.dart';
import 'package:moozy_restaurant_app/components/bottom_nav_bar.dart';
import 'package:moozy_restaurant_app/services/enum.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
        ),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
