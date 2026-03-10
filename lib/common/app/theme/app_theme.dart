import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/app/theme/app_metrics.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';

class AppTheme {
  // fontFamily is defined once on `light` ThemeData — no need to repeat it here.
  static ThemeData text = ThemeData(
    textTheme: const TextTheme(
      // Display — hero numbers, welcome screens
      displayLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: AppColor.onPrimary,
      ),
      displayMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColor.onPrimary,
      ),

      // Headline — section headers
      headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColor.onSurface,
      ),

      // Title — AppBars, card headers, sub-section titles
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w900,
        color: AppColor.onSurface,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColor.onSurface,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColor.onSurface,
      ),

      // Body — reading text, descriptions, paragraphs
      bodyMedium: TextStyle(
        fontSize: 12,
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
        color: AppColor.iconColor,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: AppColor.onSurface,
      ),
    ),
  );

  static ThemeData appBar = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.surface,
      elevation: 0,
      centerTitle: true,
      actionsIconTheme: IconThemeData(size: 24),

      iconTheme: IconThemeData(color: AppColor.onSurface, size: 20),

      titleTextStyle: TextStyle(
        color: AppColor.onSurface,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
  );

  static ThemeData light = ThemeData(
    fontFamily: 'Poppins',
    textTheme: text.textTheme,
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
        minimumSize: const WidgetStatePropertyAll(Size(335, 48)),
        backgroundColor: const WidgetStatePropertyAll(AppColor.primary),
        foregroundColor: const WidgetStatePropertyAll(AppColor.onPrimary),
        textStyle: WidgetStatePropertyAll(text.textTheme.displayMedium),
        padding: const WidgetStatePropertyAll(AppMetrics.buttonPadding),
        shape: const WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: AppMetrics.buttonBorderRadius),
        ),
      ),
    ),
  );
  static ThemeData bottomNav = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColor.surface,
      selectedItemColor: AppColor.onSurface,
      unselectedItemColor: AppColor.outline,
      selectedLabelStyle: text.textTheme.bodyMedium,
      unselectedLabelStyle: text.textTheme.bodyMedium?.copyWith(
        color: AppColor.outline,
      ),
      selectedIconTheme: const IconThemeData(
        size: 25,
        color: AppColor.onSurface,
      ),
      unselectedIconTheme: const IconThemeData(
        size: 23,
        color: AppColor.outline,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,

      elevation: 50,
    ),
  );

  static ThemeData textField = ThemeData(
    inputDecorationTheme: const InputDecorationTheme(
      
      contentPadding: AppMetrics.textFieldPadding,
      border: OutlineInputBorder(
        borderRadius: AppMetrics.textFieldBorderRadius,
        
        borderSide: BorderSide(color: AppColor.outline, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: AppMetrics.textFieldBorderRadius,
        borderSide: BorderSide(color: AppColor.outline, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: AppMetrics.textFieldBorderRadius,
        borderSide: BorderSide(color: AppColor.primary, width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: AppMetrics.textFieldBorderRadius,
        borderSide: BorderSide(color: AppColor.error, width: 1),
      ),
    ),
  );

  static ThemeData get theme => light.copyWith(
    appBarTheme: appBar.appBarTheme,
    elevatedButtonTheme: elevatedButton.elevatedButtonTheme,
    inputDecorationTheme: textField.inputDecorationTheme,
    bottomNavigationBarTheme: bottomNav.bottomNavigationBarTheme,
  );
}
