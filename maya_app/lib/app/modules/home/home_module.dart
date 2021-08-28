import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/page_home_bloc.dart';

import 'home_widget.dart';
import 'modules/day/day_module.dart';
import 'Modules/timer/timer_module.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PageHomeBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => HomeWidget(),
      children: [
        ModuleRoute('/day', module: DayModule()),
        ModuleRoute('/timer', module: TimerModule()),
      ],
    ),
  ];
}
