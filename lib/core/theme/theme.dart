import 'package:flutter/material.dart';

class AppTheme {
  AppTheme();
  static AppTheme? _current;

  static AppTheme get current {
    _current ??= AppTheme();
    return _current!;
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.blue,
      hintColor: Colors.blueAccent,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarTextStyle: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ).bodyMedium,
        titleTextStyle: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ).titleLarge,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
      ),
    );
  }
}
