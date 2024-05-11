import 'package:flutter/material.dart';

class SizeHeight {
  static double height(BuildContext context, double factor) {
    return MediaQuery.of(context).size.height * factor;
  }
}

class SizeWidth {
  static double width(BuildContext context, double factor) {
    return MediaQuery.of(context).size.width * factor;
  }
}
