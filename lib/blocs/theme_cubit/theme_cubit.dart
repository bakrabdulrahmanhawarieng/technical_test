import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

// ThemeCubit class is responsible for managing the state of theme (Dark or Light).
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeInitial());
  // Method to update the app theme.
  onUpdateTheme(ThemeMode themeMode) {
    emit(ThemeUpdateState(themeMode));
  }
}
