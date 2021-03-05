import 'package:flutter/material.dart';

import 'package:moozy_restaurant_app/components/bottom_nav_bar.dart';

import 'package:moozy_restaurant_app/services/enum.dart';
import 'package:moozy_restaurant_app/services/size_config.dart';

import 'components/home_header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: HomePageBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      /*CustomBottomNavBar class placed in components folder and MenuState.home
        is taken from enum.dart which placed in service folder*/
    );
  }
}

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader() //HomeHeader class placed in the components folder/homePage folder/screen
          ],
        ),
      ),
    );
  }
}
