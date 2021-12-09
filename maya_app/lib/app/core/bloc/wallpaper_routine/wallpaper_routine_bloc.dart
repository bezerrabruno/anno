import 'package:flutter_bloc/flutter_bloc.dart';

import 'wallpaper_routine_event.dart';

class WallpaperRoutineBloc extends Bloc<WallpaperEvent, String> {
  WallpaperRoutineBloc() : super('image2.jpg') {
    on<EWChangeWallpaper>(changeWallpaper);
  }
  void changeWallpaper(event, emit) {
    if (event.wallpaper == 1) {
      emit('image1.jpg');
    } else if (event.wallpaper == 2) {
      emit('image2.jpg');
    } else if (event.wallpaper == 3) {
      emit('image3.png');
    }
  }
}
