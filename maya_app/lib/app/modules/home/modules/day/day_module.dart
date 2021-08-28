import 'package:flutter_modular/flutter_modular.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'presenter/bloc/tasks_day_bloc.dart';
import 'domain/usecases/get_day.dart';
import 'infra/repositories/get_day_repository.dart';
import 'external/datasource/get_day_datasource.dart';

import 'presenter/day_Page.dart';

class DayModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TasksDayBloc(Modular.get())),
    Bind.lazySingleton((i) => GetDay(Modular.get())),
    Bind.lazySingleton((i) => GetDayRepository(Modular.get())),
    Bind.lazySingleton((i) => GetDayDatasouce(FirebaseFirestore.instance)),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => DayPage()),
  ];
}
