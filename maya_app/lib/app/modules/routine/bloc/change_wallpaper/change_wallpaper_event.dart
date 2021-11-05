class ChangeWallpaperEvent {
  const ChangeWallpaperEvent();
}

class ChangeWallpaper extends ChangeWallpaperEvent {
  final int wallpaper;

  const ChangeWallpaper({
    required this.wallpaper,
  });
}
