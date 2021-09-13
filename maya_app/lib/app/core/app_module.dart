import 'package:flutter_modular/flutter_modular.dart';
import 'package:maya_app/app/modules/home/modules/days/days_module.dart';

import '../modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/days', module: DaysModule()),
  ];
}
