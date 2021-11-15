import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/page_routine/page_routine_bloc.dart';
import 'bloc/wallpaper_routine/wallpaper_routine_bloc.dart';

import 'routine_widget.dart';

import 'modules/goals/goals_module.dart';
import 'modules/time/time_module.dart';
import 'modules/tasks/tasks_module.dart';

class RoutineModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PageRoutineBloc()),
    Bind.lazySingleton((i) => WallpaperRoutineBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => const RoutineWidget(),
      children: [
        ModuleRoute('/tasks', module: DayModule()),
        ModuleRoute('/time', module: TimeModule()),
        ModuleRoute('/goals', module: GoalsModule()),
      ],
    ),
  ];
}
