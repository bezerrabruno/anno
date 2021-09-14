import 'package:flutter_modular/flutter_modular.dart';

import 'anno_bloc.dart';

import 'anno_page.dart';

class AnnoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AnnoBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const AnnoPage()),
  ];
}
