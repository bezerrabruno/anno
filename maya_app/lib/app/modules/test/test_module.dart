import 'package:maya_app/app/modules/test/test_Page.dart';
import 'package:maya_app/app/modules/test/test_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TestModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TestBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => TestPage()),
    ChildRoute('/', child: (_, args) => TestPage()),
  ];
}
