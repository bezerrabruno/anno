import '../../domain/entities/day.dart';
import 'task_model.dart';

class DayModel extends Day {
  String? idNameM;
  List<TaskModel>? tasksM;

  DayModel({
    this.idNameM,
    this.tasksM,
  }) : super(idNameM, tasksM);

  Map<String, dynamic> toMap() {
    return {
      'tasks': tasksM?.map((x) => x.toMap()).toList(),
    };
  }

  factory DayModel.fromMap(Map<String, dynamic> map) {
    if (map.isNotEmpty) {
      return DayModel(
        tasksM: TaskModel().toList(map['tasks']),
      );
    } else {
      return DayModel(
        tasksM: [],
      );
    }
  }
}