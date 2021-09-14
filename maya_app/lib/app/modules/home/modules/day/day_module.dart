import 'package:flutter_modular/flutter_modular.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'domain/usecases/update_day_by_day.dart';
import 'domain/usecases/find_day_by_name.dart';
import 'presenter/bloc/card_day/card_day_bloc.dart';
import 'presenter/bloc/list_day/list_day_bloc.dart';
import 'presenter/bloc/update_day/update_day_bloc.dart';
import 'presenter/bloc/find_day/find_day_bloc.dart';
import 'infra/services/check_connection_service.dart';
import 'infra/repositories/day_repository.dart';
import 'external/driver/check_connection_driver.dart';
import 'external/datasource/get_day_datasource.dart';

import 'presenter/day_page.dart';

class DayModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => CardDayBloc()),
    Bind.lazySingleton((i) => ListDayBloc()),
    Bind.lazySingleton((i) => FindDayBloc(Modular.get())),
    Bind.lazySingleton((i) => UpdateDayBloc(Modular.get())),
    Bind.lazySingleton((i) => FindDayByIdName(Modular.get(), Modular.get())),
    Bind.lazySingleton((i) => UpdateDayByDay(Modular.get())),
    Bind.lazySingleton((i) => ConnectionService(Modular.get())),
    Bind.lazySingleton((i) => DayRepository(Modular.get())),
    Bind.lazySingleton((i) => ConnectionDriver()),
    Bind.lazySingleton((i) => DayDatasouce(FirebaseFirestore.instance)),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => DayPage(
        findDayBloc: Modular.get(),
        updateDayBloc: Modular.get(),
        listDayBloc: Modular.get(),
      ),
    ),
  ];
}
