import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double
      screenWidth; // for container's etc screen width .. type like SizeConfig.screenWidth * 0.6
  static double
      screenHeight; // for container's etc screen height .. type like SizeConfig.screenHeight * 0.6
  static double defaultSize;
  static Orientation
      orientation; //screen orientation like portrait, landscape etc

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// for height of padding, margin etc
// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// for width of padding marging etc.
// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
