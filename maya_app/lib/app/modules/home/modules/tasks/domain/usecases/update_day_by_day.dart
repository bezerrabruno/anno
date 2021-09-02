import '../../infra/repositories/day_repository.dart';

import '../entities/day.dart';

//import '../errors/failures.dart';

class UpdateDayByDay {
  final DayRepository repository;

  const UpdateDayByDay(this.repository);

  Future updateDay(Day day) async {
    final bool updateResult = await repository.updateDay(day);

    if (updateResult) {
      return 'Item criado com sucesso.';
    } else {
      return 'Erro.';
    }
  }
}
