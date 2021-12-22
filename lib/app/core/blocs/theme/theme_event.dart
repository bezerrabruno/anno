abstract class ThemeEvent {
  const ThemeEvent();
}

// 1° sigla = E == event
// 2° sigla = className
// Event

class ETEChange extends ThemeEvent {
  final int themeType;

  const ETEChange(this.themeType);
}
