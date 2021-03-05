import 'package:flutter/material.dart';
import 'package:moozy_restaurant_app/services/constant.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "MOOZY ",
          style: TextStyle(
            fontSize: 36,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
        ),
      ],
    );
  }
}
