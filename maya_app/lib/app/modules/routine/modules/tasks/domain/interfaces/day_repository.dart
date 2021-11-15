import '../entities/answers_tasks.dart';
import '../entities/day.dart';

abstract class DayRepository {
  Future<AnswersTasks> findDay(String idName);

  Future<AnswersTasks> updateDay(Day day);
}
