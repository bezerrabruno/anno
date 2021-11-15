import '../interfaces/day_cases.dart';
import '../interfaces/day_repository.dart';

import '../entities/answers_tasks.dart';
import '../entities/day.dart';
import '../entities/confirm.dart';

class UpdateDayImpl implements UpdateDay {
  final DayRepository repository;

  const UpdateDayImpl(this.repository);

  @override
  Future<AnswersTasks> update(Day day) async {
    final result = await repository.updateDay(day);

    if (result is Confirm) {
      await Future.delayed(const Duration(seconds: 1));
      return result;
    } else {
      await Future.delayed(const Duration(seconds: 3));
      return result;
    }
  }
}
