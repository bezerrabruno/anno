import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/connection/connection_bloc.dart';
import 'bloc/theme/theme_bloc.dart';

import '../modules/routine/routine_module.dart';
import '../modules/anno/anno_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => ThemeBloc()),
        Bind.lazySingleton((i) => ConnectionBloc()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/routine', module: RoutineModule()),
        ModuleRoute('/anno', module: AnnoModule()),
      ];
}
