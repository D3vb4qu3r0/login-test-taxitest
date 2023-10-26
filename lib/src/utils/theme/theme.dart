import 'package:flutter/material.dart';
import 'package:miapp/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:miapp/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:miapp/src/utils/theme/widget_themes/text_formfield_theme.dart';
import 'package:miapp/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    //primarySwatch: Colors.purple,
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData dartTheme = ThemeData(
    //primarySwatch: Colors.purple,
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
