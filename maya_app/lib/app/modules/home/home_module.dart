import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/change_page_home_bloc.dart';

import 'home_widget.dart';
import 'modules/days/days_module.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ChangePageHomeBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => HomeWidget(),
      children: [
        ModuleRoute('/days', module: DaysModule()),
      ],
    ),
  ];
}
