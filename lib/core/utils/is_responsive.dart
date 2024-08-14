import 'package:flutter/material.dart';

class IsResponsive {
  static bool isMobileScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }
 static bool isTabletScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800&& MediaQuery.of(context).size.width<=1100;
  }
  static bool isWebScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1100;
  }

}
