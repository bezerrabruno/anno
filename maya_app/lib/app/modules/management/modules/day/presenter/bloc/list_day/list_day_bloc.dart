import 'package:bloc/bloc.dart';

import 'list_day_event.dart';

import '../../../infra/model/task_model.dart';

class ListDayBloc extends Bloc<ListDayEvent, List<TaskModel>> {
  ListDayBloc() : super([]);

  @override
  Stream<List<TaskModel>> mapEventToState(ListDayEvent event) async* {
    if (event is ListDayEventInitState) {
      yield event.tasks;
    } else if (event is ListDayEventAddTask) {
      var newState = <TaskModel>[];

      for (var i = 0; i <= state.length - 1; i++) {
        newState.add(state[i]);
      }
      newState.add(event.task);

      yield newState;
    } else if (event is ListDayEventRemoveTask) {
      var newState = <TaskModel>[];

      for (var i = 0; i <= state.length - 1; i++) {
        if (i != event.index) {
          newState.add(state[i]);
        }
      }

      yield newState;
    } else if (event is ListDayEventUpdateTask) {
      var newState = <TaskModel>[];

      for (var i = 0; i <= state.length - 1; i++) {
        if (i != event.index) {
          newState.add(state[i]);
        } else {
          newState.add(event.task);
        }
      }

      yield newState;
    } else if (event is ListDayEventReOrder) {
      var newState = <TaskModel>[];

      for (var i = 0; i <= state.length - 1; i++) {
        newState.add(state[i]);
      }

      final TaskModel item = newState.removeAt(event.oldIndex);
      newState.insert(event.newIndex, item);

      yield newState;
    }
  }
}
