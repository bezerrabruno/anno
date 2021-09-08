import 'package:bloc/bloc.dart';

import 'package:maya_app/app/modules/home/modules/days/infra/model/task_model.dart';

class CardDayBloc extends Bloc<TaskModel, TaskModel> {
  CardDayBloc()
      : super(
            TaskModel(chekBox: false, description: '', priority: '', type: ''));

  @override
  Stream<TaskModel> mapEventToState(TaskModel event) async* {
    yield TaskModel(
      chekBox: event.chekBox ?? state.chekBox,
      description: event.description ?? state.description,
      priority: event.priority ?? state.priority,
      type: event.type ?? state.type,
    );
  }
}
