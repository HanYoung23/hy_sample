import 'package:hysample/resources/colors/app_color.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static const AppBarTheme appBarTheme = AppBarTheme(
    elevation: 0,
    backgroundColor: AppColor.whiteColor,
    foregroundColor: AppColor.blackColor,
    centerTitle: true,
  );

  static const TextTheme appTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 50, overflow: TextOverflow.ellipsis),
    displayMedium: TextStyle(fontSize: 40, overflow: TextOverflow.ellipsis),
    displaySmall: TextStyle(fontSize: 30, overflow: TextOverflow.ellipsis),
    // header
    headlineLarge: TextStyle(fontSize: 30, overflow: TextOverflow.ellipsis),
    headlineMedium: TextStyle(fontSize: 25, overflow: TextOverflow.ellipsis),
    headlineSmall: TextStyle(fontSize: 20, overflow: TextOverflow.ellipsis),
    // title
    titleLarge: TextStyle(fontSize: 25, overflow: TextOverflow.ellipsis),
    titleMedium: TextStyle(fontSize: 20, overflow: TextOverflow.ellipsis),
    titleSmall: TextStyle(fontSize: 15, overflow: TextOverflow.ellipsis),
    // desc
    bodyLarge: TextStyle(fontSize: 20, overflow: TextOverflow.ellipsis),
    bodyMedium: TextStyle(fontSize: 16, overflow: TextOverflow.ellipsis),
    bodySmall: TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis),
    // button
    labelLarge: TextStyle(fontSize: 16, overflow: TextOverflow.ellipsis),
    labelMedium: TextStyle(fontSize: 14, overflow: TextOverflow.ellipsis),
    labelSmall: TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis),
  );
}
