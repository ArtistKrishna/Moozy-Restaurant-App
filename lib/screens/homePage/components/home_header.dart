import 'package:flutter/material.dart';
import 'package:moozy_restaurant_app/services/size_config.dart';

import 'icon_button_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(), //searchField class placed in component folder/homePage/screens
          IconBtnWithCounter(
              svgSrc: "assets/icons/promotion.svg",
              press:
                  () {} /*IconBtnWithCounter class placed in 
                                                                    components folder/homePage/screens*/

              ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
