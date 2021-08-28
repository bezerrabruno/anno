import 'package:bloc/bloc.dart';

import 'tasks_day_state.dart';

import '../../domain/entities/day.dart';
import '../../domain/usecases/get_day.dart';

class TasksDayBloc extends Bloc<String, TasksDayState> {
  final GetDay usecase;

  TasksDayBloc(this.usecase) : super(TasksDayLoading());

  @override
  Stream<TasksDayState> mapEventToState(String event) async* {
    var result = await usecase.getDay('Segunda');

    if (result is Day) {
      yield TasksDaySuccess(day: result);
    } else {
      yield TasksDayFailure(message: result);
    }
  }
}
