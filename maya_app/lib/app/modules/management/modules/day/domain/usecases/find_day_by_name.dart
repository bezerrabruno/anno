import '../../infra/services/check_connection_service.dart';
import '../../infra/repositories/day_repository.dart';

import '../entities/connection.dart';
import '../entities/day.dart';

import '../errors/failures.dart';

class FindDayByIdName {
  final DayRepository repository;
  final ConnectionService service;

  const FindDayByIdName(this.repository, this.service);

  Future findDay(String idName) async {
    var connectionResult = await service.checkConnection();

    if (connectionResult is Connection) {
      var findResult = await repository.findDay(idName);

      if (findResult is Day) {
        await Future.delayed(const Duration(seconds: 1));
        return findResult;
      } else {
        await Future.delayed(const Duration(seconds: 1));
        return const RepositoryFailure('Error');
      }
    } else if (connectionResult is ConnectionFailure) {
      await Future.delayed(const Duration(seconds: 3));
      return connectionResult.message;
    } else {
      return 'Unknown error';
    }
  }
}
