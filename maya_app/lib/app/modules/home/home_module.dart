import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/change_page/change_page_bloc.dart';

import 'home_widget.dart';
import 'modules/day/day_module.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ChangePageBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => HomeWidget(barBloc: Modular.get()),
      children: [
        ModuleRoute('/days', module: DayModule()),
      ],
    ),
  ];
}
