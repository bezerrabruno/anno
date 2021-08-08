import 'package:maya_app/app/modules/home/pages/day/day_Page.dart';
import 'package:maya_app/app/modules/home/pages/day/day_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DayModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DayBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => DayPage()),
  ];
}
