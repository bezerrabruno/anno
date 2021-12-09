import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/connection/connection_bloc.dart';

import '../modules/home/home_module.dart';
import '../modules/goals/goals_module.dart';
import '../modules/tasks/tasks_module.dart';
import '../modules/time/time_module.dart';
import '../modules/anno/anno_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => ConnectionBloc()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/tasks', module: DayModule()),
        ModuleRoute('/time', module: TimeModule()),
        ModuleRoute('/goals', module: GoalsModule()),
        ModuleRoute('/anno', module: AnnoModule()),
      ];
}
