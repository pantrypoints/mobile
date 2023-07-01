import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prenuer/core/helpers/custom_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    primaryColor: CustomColors.primaryColorLight,
    scaffoldBackgroundColor: CustomColors.lightBG,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      shadowColor: CustomColors.primaryColorLight,
      elevation: 0.0,
      color: CustomColors.primaryColorLight,
      iconTheme: IconThemeData(color: CustomColors.primaryColorLight, size: 40.0),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    colorScheme: const ColorScheme.light(
      primary: CustomColors.lightBG,
      onPrimary: CustomColors.primaryColorLight,
    ),
    useMaterial3: true,
    iconTheme: const IconThemeData(color: CustomColors.primaryColorLight, size: 40.0),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: CustomColors.lightBG,
      elevation: 0.0,
      selectedItemColor: CustomColors.primaryColorLight,
      type: BottomNavigationBarType.shifting,
      unselectedItemColor: CustomColors.unSelected,
    ),
  );
}
