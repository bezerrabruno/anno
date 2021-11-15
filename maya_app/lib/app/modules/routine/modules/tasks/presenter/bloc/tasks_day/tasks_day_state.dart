import 'package:maya_app/app/modules/routine/modules/tasks/domain/entities/day.dart';

class TasksDayState {
  const TasksDayState();
}

// 1° sigla = S == State
// 2° sigla = className
// State

class STDLoading extends TasksDayState {
  const STDLoading() : super();
}

class STDSuccess extends TasksDayState {
  final Day day;

  const STDSuccess({
    required this.day,
  }) : super();
}

class STDFailure extends TasksDayState {
  final String message;

  const STDFailure({
    required this.message,
  }) : super();
}
