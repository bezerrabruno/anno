import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/bloc/tasks_day/tasks_day_bloc.dart';
import 'domain/usecases/find_day_impl.dart';
import 'domain/usecases/update_day_impl.dart';
import 'infra/day_repository_impl.dart';
import 'external/day_firestore_impl.dart';

import 'presenter/tasks_page.dart';

class DayModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => TasksDayBloc(i(), i())),
        Bind.lazySingleton((i) => FindDayImpl(i())),
        Bind.lazySingleton((i) => UpdateDayImpl(i())),
        Bind.lazySingleton((i) => DayRepositoryImpl(i())),
        Bind.lazySingleton((i) => DayFirestoreImpl(i())),
        Bind.singleton((i) => FirebaseFirestore.instance),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, args) => TasksPage(),
        ),
      ];
}
