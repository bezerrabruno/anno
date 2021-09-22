import 'package:maya_app/app/modules/management/modules/day/infra/model/task_model.dart';

class ListDayEvent {
  const ListDayEvent();
}

class ListDayEventInitState extends ListDayEvent {
  final List<TaskModel> tasks;

  const ListDayEventInitState(this.tasks);
}

class ListDayEventAddTask extends ListDayEvent {
  final TaskModel task;

  const ListDayEventAddTask(this.task);
}

class ListDayEventUpdateTask extends ListDayEvent {
  final int index;
  final TaskModel task;

  const ListDayEventUpdateTask(this.index, this.task);
}

class ListDayEventReOrder extends ListDayEvent {
  final int oldIndex;
  final int newIndex;

  const ListDayEventReOrder(this.oldIndex, this.newIndex);
}
