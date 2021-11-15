import 'package:bloc/bloc.dart';

import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState(2)) {
    on<ETEChangeTheme>(chengeTheme);
  }

  void chengeTheme(event, emit) {
    if (event.theme == 'light') {
      emit(
        const ThemeState(0),
      );
    } else if (event.theme == 'dark') {
      emit(
        const ThemeState(1),
      );
    } else if (event.theme == 'system') {
      emit(
        const ThemeState(2),
      );
    }
  }
}
