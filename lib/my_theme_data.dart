import 'package:flutter/material.dart';
import 'package:islamee/app_colors.dart';

import 'app_colors.dart';

class MyThemeData{
  static final ThemeData darkTheme= ThemeData(
    scaffoldBackgroundColor: AppColor.transparentColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //  backgroundColor: AppColor.primaryColor,
      selectedItemColor: AppColor.whiteColor,
      unselectedItemColor: AppColor.blackColor,
      showSelectedLabels: true,
    ),
  );

}