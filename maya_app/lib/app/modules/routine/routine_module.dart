import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/change_page/change_page_bloc.dart';
import 'bloc/change_wallpaper/change_wallpaper_bloc.dart';

import 'routine_widget.dart';
import 'modules/day/day_module.dart';

class RoutineModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ChangePageBloc()),
    Bind.lazySingleton((i) => ChangeWallpaperBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => const RoutineWidget(),
      children: [
        ModuleRoute('/tasks', module: DayModule()),
      ],
    ),
  ];
}
