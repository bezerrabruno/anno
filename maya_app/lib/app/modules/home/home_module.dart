import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (context, args) => HomeWidget(),
        children: [
          //ModuleRoute('/day', module: DayModule()),
          //ModuleRoute('/timer', module: TimerModule()),
        ]),
  ];
}
