import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/cards_day_bloc.dart';
import 'day_Page.dart';

class DayModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CardsDayBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => DayPage()),
    //ModuleRoute('/task', module: TaskModule()),
  ];
}
