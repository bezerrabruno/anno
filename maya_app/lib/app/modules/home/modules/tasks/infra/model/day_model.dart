import '../../domain/entities/day.dart';
import '../../domain/entities/task.dart';
import 'task_model.dart';

class DayModel extends Day {
  String? name;
  List<Task>? routine;
  List<Task>? temporary;
  List<Task>? finalize;
  List<Task>? all;

  DayModel({
    this.name,
    this.routine,
    this.temporary,
    this.finalize,
    this.all,
  }) : super(0, '', [], [], [], []);

  DayModel fromMap(Map<String, dynamic> map) {
    if (map.isNotEmpty) {
      return DayModel(
        name: map['name'],
        routine: TaskModel().toList(map['routine']),
        temporary: TaskModel().toList(map['temporary']),
        finalize: TaskModel().toList(map['finalize']),
        all: TaskModel()
            .toList(map['routine'] + map['temporary'] + map['finalize']),
      );
    } else {
      return DayModel(
        name: '',
        routine: [],
        temporary: [],
        finalize: [],
        all: [],
      );
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'routine': routine,
      'temporary': temporary,
      'finalize': finalize,
    };
  }
}
