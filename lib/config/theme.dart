// import 'package:flutter/material.dart';

// class AppTheme {
//   static ThemeData lightTheme = ThemeData(
//     primarySwatch: Colors.indigo,
//     scaffoldBackgroundColor: Colors.grey[100],
//     appBarTheme: const AppBarTheme(elevation: 0, centerTitle: true),
//   );
// }

import 'package:flutter/material.dart';
import 'package:safarsync_app/config/colors.dart';
import 'package:safarsync_app/config/text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    // 🌈 Colors
    scaffoldBackgroundColor: AppColors.background,
    primaryColor: AppColors.primary,

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      background: AppColors.background,
    ),

    // 📝 Text Theme
    textTheme: const TextTheme(
      headlineLarge: AppTextStyles.appTitle,
      headlineMedium: AppTextStyles.heading,
      bodyMedium: AppTextStyles.subtitle,
      labelLarge: AppTextStyles.label,
    ),

    // 🔵 AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      foregroundColor: AppColors.textPrimary,
    ),

    // 🔘 Elevated Button Theme (Sign In button auto styled)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        textStyle: AppTextStyles.button,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    // ⚪ Outlined Button Theme (Google button)
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.textPrimary,
        textStyle: AppTextStyles.buttonSecondary,
        side: const BorderSide(color: AppColors.divider),
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    // 🧾 Input Field Theme (TextField auto styled)
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.inputFill,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      hintStyle: const TextStyle(color: AppColors.textSecondary),
    ),

    // 📏 Divider Theme
    dividerTheme: const DividerThemeData(
      color: AppColors.divider,
      thickness: 1,
    ),
  );
}
