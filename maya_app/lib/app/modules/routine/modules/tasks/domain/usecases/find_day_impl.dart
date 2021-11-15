import '../interfaces/day_cases.dart';
import '../interfaces/day_repository.dart';

import '../entities/answers_tasks.dart';
import '../entities/day.dart';

class FindDayImpl implements FindDay {
  final DayRepository repository;

  const FindDayImpl(this.repository);

  @override
  Future<AnswersTasks> find(String idName) async {
    final result = await repository.findDay(idName);

    if (result is Day) {
      await Future.delayed(const Duration(seconds: 1));
      return result;
    } else {
      await Future.delayed(const Duration(seconds: 3));
      return result;
    }
  }
}
