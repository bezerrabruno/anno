import '../entities/answers_tasks.dart';
import '../entities/day.dart';

abstract class FindDay {
  Future<AnswersTasks> find(String idName);
}

abstract class UpdateDay {
  Future<AnswersTasks> update(Day day);
}
