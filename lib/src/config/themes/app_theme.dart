import 'package:flutter/material.dart';

import '/src/config/colors.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 1,
        color: AppColors.accentYellow,
        foregroundColor: AppColors.darkPurple,
      ),
      scaffoldBackgroundColor: AppColors.accentYellow,
      primaryColor: AppColors.accentYellow,
      colorScheme: const ColorScheme.light(secondary: AppColors.darkPurple),
      shadowColor: AppColors.darkPurple,
    );
  }

  static ThemeData get dark {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 1,
        color: AppColors.darkPurple,
        foregroundColor: AppColors.accentYellow,
      ),
      scaffoldBackgroundColor: AppColors.darkPurple,
      primaryColor: AppColors.darkPurple,
      colorScheme: const ColorScheme.dark(secondary: AppColors.lightOrange),
      shadowColor: AppColors.lightOrange,
    );
  }
}
