import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';

class AppTheme {
  static ThemeData text = ThemeData(
    fontFamily: 'Poppins',
    textTheme: const TextTheme(
      // Display — hero numbers, welcome screens
      displayLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: AppColor.onPrimary,
      ),
      displayMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColor.onPrimary,
      ),

      // Headline — page titles, major sections
      headlineSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColor.onSurface,
      ),

      // Title — AppBars, card headers, sub-section titles
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColor.onSurface,
      ),
      // Body — reading text, descriptions, paragraphs
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColor.onSurface,
      ),

      // Label — buttons, captions, overline text
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColor.onSurface,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColor.onSurface,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColor.onSurface,
      ),
    ),
  );

  static ThemeData light = ThemeData(
    fontFamily: 'Poppins',
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.appBarBackground,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColor.appBarIcon),
      titleTextStyle: TextStyle(
        color: AppColor.appBarTitle,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      primary: AppColor.primary,
      onPrimary: AppColor.onPrimary,
      secondary: AppColor.secondary,
      onSecondary: AppColor.onSecondary,
      error: AppColor.error,
      onError: AppColor.onError,
      surface: AppColor.surface,
      onSurface: AppColor.onSurface,
      outline: AppColor.outline,
    ),
  );

  static ThemeData elevatedButton = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColor.primary),
        textStyle: WidgetStatePropertyAll(TextStyle(color: AppColor.onPrimary)),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 12, horizontal: 40),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        ),
      ),
    ),
  );
  static ThemeData bottomNav = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColor.surface,
      selectedItemColor: AppColor.appBarIcon,
      unselectedItemColor: AppColor.outline,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColor.appBarTitle,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColor.outline,
      ),
      selectedIconTheme: const IconThemeData(
        size: 25,
        color: AppColor.appBarIcon,
      ),
      unselectedIconTheme: const IconThemeData(
        size: 23,
        color: AppColor.outline,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    ),
  );

  static ThemeData textField = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.outline, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.outline, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.primary, width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.error, width: 1),
      ),
      constraints: const BoxConstraints(minHeight: 48, maxHeight: 48),
    ),
  );

  static ThemeData bottomNavigationBar = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedIconTheme: IconThemeData(),
    ),
  );
}
