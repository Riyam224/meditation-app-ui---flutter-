import 'package:flutter/widgets.dart';

class AppSizes {
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static const double mainPadding = 20.0;
  static const double defaultPadding = 16.0;
  static const double defaultMargin = 16.0;
  static const double borderRadius = 38.0;
}
