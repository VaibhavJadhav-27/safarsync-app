// lib/config/theme/app_text_styles.dart

import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyles {
  // 🔷 App Title (SafarSync logo text)
  static const TextStyle appTitle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  // 🔷 Screen Heading (Welcome Back)
  static const TextStyle heading = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // 🔷 Subtitle / Description
  static const TextStyle subtitle = TextStyle(
    fontSize: 13,
    color: AppColors.textSecondary,
  );

  // 🔷 Form Labels (Email / Password)
  static const TextStyle label = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  // 🔷 Button Text
  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  // 🔷 Secondary Button Text
  static const TextStyle buttonSecondary = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  // 🔷 Small Caption
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    color: AppColors.textSecondary,
  );

  // 🔷 Link Text
  static const TextStyle link = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  // 🔷 Tagline (Plan together. Travel better.)
  static const TextStyle tagline = TextStyle(
    fontSize: 14,
    color: Colors.white70,
  );

  // 🔷 Body Text
  static const TextStyle bodySecondary = TextStyle(
    fontSize: 14,
    color: AppColors.textSecondary,
  );
}
