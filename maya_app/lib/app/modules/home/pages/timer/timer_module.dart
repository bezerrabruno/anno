import 'package:maya_app/app/modules/home/pages/timer/timer_Page.dart';
import 'package:maya_app/app/modules/home/pages/timer/timer_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
