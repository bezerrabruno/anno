import '../domain/interfaces/day_repository.dart';
import 'interfaces/day_datasource.dart';

import '../domain/entities/answers_tasks.dart';
import '../domain/entities/day.dart';

import 'model/day_model.dart';

class DayRepositoryImpl implements DayRepository {
  final DayDatasource datasouce;

  DayRepositoryImpl(this.datasouce);

  @override
  Future<AnswersTasks> findDay(String idName) async {
    final result = await datasouce.findDay(idName);

    if (result is Map<String, dynamic>) {
      return DayModel.fromMap(result);
    } else {
      return result;
    }
  }

  @override
  Future<AnswersTasks> updateDay(Day day) async {
    var result = await datasouce.updateDay(day.idName!, DayModel.toMap(day));

    return result;
  }
}
