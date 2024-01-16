import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:note_app/theme/dark_theme.dart';
import 'package:note_app/theme/light_theme.dart';

part 'themes_state.dart';

class ThemesCubit extends Cubit<ThemesState> {
  ThemesCubit() : super(ThemesState(theme: lightMood));
  IconData? icon = Icons.toggle_on;
  void toggleTheme() {
    if (state.theme == lightMood) {
      icon == Icons.toggle_off;

      final updateState = ThemesState(theme: darkMood);
      emit(updateState);
    } else {
      icon == Icons.toggle_on;

      final updateState = ThemesState(theme: lightMood);

      emit(updateState);
    }
  }
}
