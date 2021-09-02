import 'package:maya_app/app/modules/home/modules/tasks/domain/entities/day.dart';

class TasksDayState {}

class StateTasksDayLoading implements TasksDayState {}

class StateTasksDaySuccess extends TasksDayState {
  Day day;

  StateTasksDaySuccess({
    required this.day,
  });
}

class StateTasksDayFailure extends TasksDayState {
  String message;

  StateTasksDayFailure({
    required this.message,
  });
}
