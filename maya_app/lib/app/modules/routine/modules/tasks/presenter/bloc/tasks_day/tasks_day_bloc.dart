import 'package:bloc/bloc.dart';

import '../../../domain/interfaces/day_cases.dart';

import '../../../domain/entities/day.dart';
import '../../../domain/entities/task.dart';
import '../../../domain/errors/failure_tasks.dart';

import 'tasks_day_event.dart';
import 'tasks_day_state.dart';

class TasksDayBloc extends Bloc<TasksDayEvent, TasksDayState> {
  final FindDay findUsecase;
  final UpdateDay updateUsecase;

  TasksDayBloc(
    this.findUsecase,
    this.updateUsecase,
  ) : super(const STDLoading()) {
    on<ETDInitialState>(initialState);
    on<ETDAddTask>(addTask);
    on<ETDRemoveTask>(removeTask);
    on<ETDUpdateTask>(updateTask);
    on<ETDReOrder>(reOrder);
  }

  void initialState(event, emit) async {
    final result = await findUsecase.find(event.day);

    if (result is Day) {
      emit(
        STDSuccess(day: result),
      );
    } else if (result is FTFServer) {
      emit(
        STDFailure(message: result.message),
      );
    } else {
      emit(
        const STDFailure(message: FTFUnexpected.message),
      );
    }
  }

  void addTask(event, emit) async {
    var newState = state as STDSuccess;

    newState.day.tasks!.add(event.task);

    await updateUsecase.update(newState.day);

    emit(STDSuccess(day: newState.day));
  }

  void removeTask(event, emit) async {
    final newState = state as STDSuccess;

    newState.day.tasks!.removeAt(event.index);

    await updateUsecase.update(newState.day);

    emit(STDSuccess(day: newState.day));
  }

  void updateTask(event, emit) async {
    final newState = state as STDSuccess;

    newState.day.tasks!.removeAt(event.index);
    newState.day.tasks!.insert(event.index, event.task);

    await updateUsecase.update(newState.day);

    emit(STDSuccess(day: newState.day));
  }

  void reOrder(event, emit) async {
    final newState = state as STDSuccess;

    final Task item = newState.day.tasks!.removeAt(event.oldIndex);
    newState.day.tasks!.insert(event.newIndex, item);

    await updateUsecase.update(newState.day);

    emit(STDSuccess(day: newState.day));
  }
}
