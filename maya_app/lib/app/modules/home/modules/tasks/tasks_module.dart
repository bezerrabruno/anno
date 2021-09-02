import 'package:flutter_modular/flutter_modular.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'domain/usecases/update_day_by_day.dart';
import 'presenter/bloc/find_day/tasks_day_bloc.dart';
import 'domain/usecases/find_day_by_name.dart';
import 'infra/services/check_connection_service.dart';
import 'infra/repositories/day_repository.dart';
import 'external/driver/check_connection_driver.dart';
import 'external/datasource/get_day_datasource.dart';

import 'presenter/day_Page.dart';

class TasksModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TasksDayBloc(Modular.get())),
    Bind.lazySingleton((i) => FindDayByName(Modular.get(), Modular.get())),
    Bind.lazySingleton((i) => UpdateDayByDay(Modular.get())),
    Bind.lazySingleton((i) => ConnectionService(Modular.get())),
    Bind.lazySingleton((i) => DayRepository(Modular.get())),
    Bind.lazySingleton((i) => ConnectionDriver()),
    Bind.lazySingleton((i) => DayDatasouce(FirebaseFirestore.instance)),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => DayPage()),
  ];
}
