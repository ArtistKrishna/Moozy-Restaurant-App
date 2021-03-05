import 'package:flutter/material.dart';
import 'package:moozy_restaurant_app/services/constant.dart';

import 'components/splashContent.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text":
          "Giving your Hunger a new Option. \nOrder your Favourite Food with MOOZY!",
      "image": "assets/images/orders.png"
    },
    {
      "text":
          "Your Food Desire full fill by our Partners Restaurants \nwhich Taste that Best, its on Time",
      "image": "assets/images/restaurants.png"
    },
    {
      "text":
          "Straight out of the Restaurant to your Doorstep \nwith Your Favourite Food Delivery Partner",
      "image": "assets/images/deleveryBoy.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      buttonTitle: "Continue",
                      press: () {
                        Navigator.pushNamed(context, 'HomePageScreen');
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Anineted dot build according to moving images and text (index)
  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

//DefaultButton use as continue button..
class DefaultButton extends StatelessWidget {
  DefaultButton({this.buttonTitle, this.press});

  final Function press;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 56,
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: press,
          color: kPrimaryColor,
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ));
  }
}
