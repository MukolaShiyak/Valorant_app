import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 1,
        color: Color.fromARGB(255, 255, 245, 154),
        foregroundColor: Color.fromARGB(255, 26, 15, 94),
      ),
      scaffoldBackgroundColor: const Color.fromARGB(255, 255, 245, 154),
      primaryColor: const Color.fromARGB(255, 255, 245, 154),
      colorScheme:
          const ColorScheme.light(secondary: Color.fromARGB(255, 26, 15, 94)),
      shadowColor: const Color.fromARGB(255, 26, 15, 94),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 1,
        color: Color.fromARGB(255, 26, 15, 94),
        foregroundColor: Color.fromARGB(255, 255, 245, 154),
      ),
      scaffoldBackgroundColor: const Color.fromARGB(255, 26, 15, 94),
      primaryColor: const Color.fromARGB(255, 26, 15, 94),
      colorScheme:
          const ColorScheme.dark(secondary: Color.fromARGB(255, 255, 234, 195)),
      shadowColor: const Color.fromARGB(255, 255, 234, 195),
    );
  }
}
