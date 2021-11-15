abstract class ThemeEvent {
  const ThemeEvent();
}

// 1° sigla = E == event
// 2° sigla = className
// Event

class ETEChangeTheme extends ThemeEvent {
  final int theme;

  const ETEChangeTheme(this.theme);
}
