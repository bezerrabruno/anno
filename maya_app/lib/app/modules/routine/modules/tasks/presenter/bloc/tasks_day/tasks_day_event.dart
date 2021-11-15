import '../../../domain/entities/task.dart';

class TasksDayEvent {
  const TasksDayEvent();
}

// 1° sigla = E == Event
// 2° sigla = className
// Event

class ETDInitialState extends TasksDayEvent {
  final String day;

  const ETDInitialState(this.day);
}

class ETDAddTask extends TasksDayEvent {
  final Task task;

  const ETDAddTask(this.task);
}

class ETDRemoveTask extends TasksDayEvent {
  final int index;

  const ETDRemoveTask(this.index);
}

class ETDUpdateTask extends TasksDayEvent {
  final int index;
  final Task task;

  const ETDUpdateTask(this.index, this.task);
}

class ETDReOrder extends TasksDayEvent {
  final int oldIndex;
  final int newIndex;

  const ETDReOrder(this.oldIndex, this.newIndex);
}
