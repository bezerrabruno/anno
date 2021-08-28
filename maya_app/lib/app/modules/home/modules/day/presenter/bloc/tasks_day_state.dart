import 'package:maya_app/app/modules/home/modules/day/domain/entities/day.dart';

class TasksDayState {}

class TasksDayLoading implements TasksDayState {}

class TasksDaySuccess extends TasksDayState {
  Day day;

  TasksDaySuccess({
    required this.day,
  });
}

class TasksDayFailure extends TasksDayState {
  String message;

  TasksDayFailure({
    required this.message,
  });
}
