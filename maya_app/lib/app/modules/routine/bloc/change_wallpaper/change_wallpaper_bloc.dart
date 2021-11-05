import 'package:flutter_bloc/flutter_bloc.dart';

import 'change_wallpaper_event.dart';

class ChangeWallpaperBloc extends Bloc<ChangeWallpaperEvent, String> {
  ChangeWallpaperBloc() : super('image2.jpg') {
    on<ChangeWallpaper>(changeWallpaper);
  }
  void changeWallpaper(event, emit) {
    if (event.wallpaper == 1) {
      emit('image1.jpg');
    } else if (event.wallpaper == 2) {
      emit('image2.jpg');
    } else if (event.wallpaper == 3) {
      emit('image3.jpg');
    } else if (event.wallpaper == 4) {
      emit('image4.jpg');
    }
  }
}
