import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

import 'colors.dart';

class ThemeTalentDna {
  static ThemeData themeData = ThemeData(
    textTheme: GoogleFonts.montserratTextTheme(),
    scaffoldBackgroundColor: Palette.white,
    primaryColor: Palette.primary,
    focusColor: Palette.secondary,
    dividerColor: Palette.backgroundSmoke,
    disabledColor: Palette.textDisabled,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hintColor: Palette.textPlaceholder,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Palette.textPrimary,
      titleSpacing: 0,
      elevation: 0,
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: GradientOutlineInputBorder(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Palette.gradientInputDark, Palette.gradientInputLight]),
          width: 1,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      focusedBorder: GradientOutlineInputBorder(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Palette.gradientInputDark, Palette.gradientInputLight]),
          width: 2,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: Palette.error,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    colorScheme: ColorScheme(
      primary: Palette.primary,
      error: Palette.error,
      brightness: Brightness.light,
      onPrimary: Palette.white,
      secondary: Palette.secondary,
      onSecondary: Palette.white,
      onError: Palette.white,
      background: const Color(0xFFF1F2F3),
      onBackground: Palette.textPrimary,
      surface: const Color(0xFFF1F2F3),
      onSurface: Palette.textPrimary,
    ),
  );
}
