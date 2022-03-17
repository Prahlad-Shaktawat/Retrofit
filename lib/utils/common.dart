import 'package:flutter/material.dart';

class Common {
  static sizedBoxHeight(double height) {
    return SizedBox(
      height: height,
    );
  }

  static sizedBoxWidth(double width) {
    return SizedBox(
      width: width,
    );
  }

  static displaySize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static displayHeight(BuildContext context) {
    return displaySize(context).height;
  }

  static displayWidth(BuildContext context) {
    return displaySize(context).width;
  }

  static removeKeyBoardFocus(BuildContext context) {
    return FocusScope.of(context).unfocus();
  }
}
