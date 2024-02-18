import 'package:ecommerce_application_2024/util/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce_application_2024/util/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerce_application_2024/util/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce_application_2024/util/theme/custom_themes/chip_theme.dart';
import 'package:ecommerce_application_2024/util/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce_application_2024/util/theme/custom_themes/outline_button_theme.dart';
import 'package:ecommerce_application_2024/util/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce_application_2024/util/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

//For light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetThemeData,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutputButtonTheme.lightOutputbuttonTheme,
    inputDecorationTheme: TTextFieldTheme.lightTextFieldTheme,
  );

//For dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetThemeData,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutputButtonTheme.darkOutputbuttonTheme,
    inputDecorationTheme: TTextFieldTheme.darkTextFieldTheme,
  );
}
