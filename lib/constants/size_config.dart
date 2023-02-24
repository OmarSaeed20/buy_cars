
import '../index.dart';

class SizeConfig {
  static MediaQueryData? _kMediaQuery;
  static double? screenWidth;
  static double? screenHeight;
  static Orientation? orientation;

  void init(BuildContext context) {
    _kMediaQuery = MediaQuery.of(context);
    screenHeight = _kMediaQuery!.size.height;
    screenWidth = _kMediaQuery!.size.width;
    orientation = _kMediaQuery!.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight!;
  // 810 is the layout height that designer use
  return (inputHeight / 810.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth!;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
