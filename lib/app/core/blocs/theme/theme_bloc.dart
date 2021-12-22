import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeMode> {
  ThemeBloc() : super(ThemeMode.system) {
    on<ETEChange>(change);
  }
  void change(event, emit) {
    if (event.themeType == 0) {
      emit(ThemeMode.system);
    }
    if (event.themeType == 1) {
      emit(ThemeMode.light);
    }
    if (event.themeType == 2) {
      emit(ThemeMode.dark);
    }
  }
}
