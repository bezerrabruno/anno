import 'package:maya_app/app/modules/ano/ano_Page.dart';
import 'package:maya_app/app/modules/ano/ano_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AnoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AnoBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => AnoPage()),
    ChildRoute('/', child: (_, args) => AnoPage()),
  ];
}
