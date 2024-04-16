import 'package:ecommerce/utils/theme/custom_theme/appbar_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/chip_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/outlined_buttom_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/text_field_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._(); // private constructor

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Schyler',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtomTheme.lightoutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Schyler',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtomTheme.darkoutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
