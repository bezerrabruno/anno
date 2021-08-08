import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/buttom_bar_bloc.dart';
import 'home_widget.dart';
import 'pages/day/day_module.dart';
import 'pages/timer/timer_module.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ButtomBarBloc()),
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
