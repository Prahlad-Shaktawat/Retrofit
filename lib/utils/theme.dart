import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData of(context) {
    var theme = Theme.of(context);
    return theme.copyWith(
      scaffoldBackgroundColor: AppColor.deepWhite,
      primaryColor: AppColor.deepWhite,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        toolbarTextStyle: GoogleFonts.arapey(
          fontSize: 24,
          color: AppColor.deepBlack,
        ),
        iconTheme: IconThemeData(),
      ),
    );
  }
}

class AppColor {
  static const primaryColor = Color(0xFFA5D6A7);
  static const DarkPrimaryColor = Color(0xFF66BB6A);
  static const deepBlack = Color(0xff000000);
  static const deepWhite = Color(0xffffffff);
  static const indigo = Color(0xff002651);
  static const deepAmber = Color(0xFFFFCA28);
  static const deepGrey = Color(0xFF424242);
  static const lightGrey = Color(0xFFE0E0E0);
  static const deepRed = Color(0xffef5350);
}
