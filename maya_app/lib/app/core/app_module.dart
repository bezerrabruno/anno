import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/buttom_bar_bloc.dart';
import '../modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ButtomBarBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}
