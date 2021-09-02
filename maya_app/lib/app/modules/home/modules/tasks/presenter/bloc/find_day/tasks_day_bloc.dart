import 'package:bloc/bloc.dart';

import 'tasks_day_state.dart';

import '../../../domain/entities/day.dart';
import '../../../domain/usecases/find_day_by_name.dart';

class TasksDayBloc extends Bloc<String, TasksDayState> {
  final FindDayByName usecase;

  TasksDayBloc(this.usecase) : super(StateTasksDayLoading());

  @override
  Stream<TasksDayState> mapEventToState(String event) async* {
    yield StateTasksDayLoading();
    var result = await usecase.findDay(event);

    if (result is Day) {
      yield StateTasksDaySuccess(day: result);
    } else {
      yield StateTasksDayFailure(message: 'Erro');
    }
  }
}
