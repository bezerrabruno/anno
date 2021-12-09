class WallpaperEvent {
  const WallpaperEvent();
}

// 1° sigla = E == event
// 2° sigla = className
// Event

class EWChangeWallpaper extends WallpaperEvent {
  final int wallpaper;

  const EWChangeWallpaper({
    required this.wallpaper,
  });
}
