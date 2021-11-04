abstract class ThemeEvent {
  const ThemeEvent();
}

class ChangeThemeEvent extends ThemeEvent {
  final int theme;

  const ChangeThemeEvent(this.theme);
}
