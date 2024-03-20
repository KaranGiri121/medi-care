import 'package:flutter/material.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/themes/custom_themes/custom_theme.dart';

class AppTheme{
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: AppColor.primary,
    appBarTheme: CustomTheme.appBarTheme,
    textTheme: CustomTheme.textTheme,
    elevatedButtonTheme: CustomTheme.elevatedTheme,
    outlinedButtonTheme: CustomTheme.outlineTheme,
    inputDecorationTheme: CustomTheme.inputTheme,
  );




}