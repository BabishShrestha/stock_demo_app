import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_demo_app/core/theme/theme.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(AppTheme.lightTheme);
  void toggleTheme() {
    emit(state == AppTheme.lightTheme ? ThemeData.dark() : AppTheme.lightTheme);
  }

  void updateTheme(ThemeData theme) {
    emit(theme);
  }
}
