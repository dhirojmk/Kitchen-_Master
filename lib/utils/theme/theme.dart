import 'package:flutter/material.dart';
import 'package:kitchen_master/utils/theme/custom_themes/buttom_sheet_theme.dart';
import 'package:kitchen_master/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:kitchen_master/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:kitchen_master/utils/theme/custom_themes/text_field_theme.dart';
import 'package:kitchen_master/utils/theme/custom_themes/text_themes.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme =ThemeData(
    useMaterial3: true,
    fontFamily: "poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTestTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TButtonSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,

  );
  static ThemeData darkTheme =ThemeData(
    useMaterial3: true,
    fontFamily: "poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTestTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TButtonSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}