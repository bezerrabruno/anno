import 'package:flutter_modular/flutter_modular.dart';

import 'timer_Page.dart';
import 'timer_bloc.dart';

class TimerModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TimerBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => TimerPage()),
  ];
}
