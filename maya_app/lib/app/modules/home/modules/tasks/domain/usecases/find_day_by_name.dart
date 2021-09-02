import 'package:maya_app/app/modules/home/modules/tasks/infra/model/day_model.dart';

import '../../infra/services/check_connection_service.dart';
import '../../infra/repositories/day_repository.dart';

import '../entities/connection.dart';
import '../entities/day.dart';

import '../errors/failures.dart';

class FindDayByName {
  final DayRepository repository;
  final ConnectionService service;

  const FindDayByName(this.repository, this.service);

  Future findDay(String nameDay) async {
    var connectionResult = await service.checkConnection();

    if (connectionResult is Connection) {
      DayModel findResult = await repository.findDay(nameDay);

      if (findResult is Day) {
        await Future.delayed(Duration(seconds: 1));
        return findResult;
      } else {
        await Future.delayed(Duration(seconds: 1));
        return RepositoryFailure();
      }
    } else {
      await Future.delayed(Duration(seconds: 3));
      return ConnectionFailure();
    }
  }
}
