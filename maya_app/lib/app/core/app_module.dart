import 'package:flutter_modular/flutter_modular.dart';

import '../modules/management/management_module.dart';
import '../modules/ano/anno_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/management', module: ManagementModule()),
    ModuleRoute('/anno', module: AnnoModule()),
  ];
}
