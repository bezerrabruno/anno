import '../entities/answers_tasks.dart';

abstract class TasksFailure extends AnswersTasks {
  const TasksFailure();
}

// 1° sigla = F == Failure
// 2° sigla = className
// Failure

class FTFUnexpected extends TasksFailure {
  static const String message = 'Unexpected Failure';

  const FTFUnexpected();
}

class FTFServer extends TasksFailure {
  final String message;

  const FTFServer(this.message);
}
