import 'package:bloc/bloc.dart';

import 'package:maya_app/app/modules/home/modules/day/infra/model/task_model.dart';

class CardDayBloc extends Bloc<TaskModel, TaskModel> {
  CardDayBloc()
      : super(TaskModel(
            chekBoxM: false, descriptionM: '', priorityM: '', typeM: ''));

  @override
  Stream<TaskModel> mapEventToState(TaskModel event) async* {
    yield TaskModel(
      chekBoxM: event.chekBox ?? state.chekBox,
      descriptionM: event.description ?? state.description,
      priorityM: event.priority ?? state.priority,
      typeM: event.type ?? state.type,
    );
  }
}
