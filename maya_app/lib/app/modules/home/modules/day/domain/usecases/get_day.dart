import '../../infra/services/check_connection_service.dart';
import '../../infra/repositories/get_day_repository.dart';

import '../entities/connection.dart';
import '../entities/day.dart';

import '../errors/failures.dart';

class GetDay {
  final GetDayRepository repository;
  final CheckConnectionService service;

  const GetDay(this.repository, this.service);

  Future getDay(String day) async {
    var connectionResult = await service.checkConnection();

    if (connectionResult is Connection) {
      var dayResult = await repository.getDay(day);

      if (dayResult is Day) {
        return dayResult;
      } else {
        return 'Erro.';
      }
    } else {
      if (connectionResult is ConnectionFailure) {
        await Future.delayed(Duration(seconds: 1));
        return 'Erro de conexão.';
      } else {
        print(connectionResult.toString());
        await Future.delayed(Duration(seconds: 1));
        return 'Erro Desconhecido.';
      }
    }
  }
}
