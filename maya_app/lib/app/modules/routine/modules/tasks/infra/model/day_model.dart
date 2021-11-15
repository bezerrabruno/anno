import '../../domain/entities/day.dart';
import 'task_model.dart';

class DayModel extends Day {
  DayModel() : super(idName: '', tasks: []);

  static Map<String, dynamic> toMap(Day day) {
    return {
      'idName': day.idName!,
      'tasks': day.tasks!.map((e) => TaskModel.toMap(e)).toList(),
    };
  }

  static Day fromMap(Map<String, dynamic> map) {
    if (map.isNotEmpty) {
      return Day(
        idName: map['idName'],
        tasks: TaskModel.toList(map['tasks']),
      );
    } else {
      return Day(
        idName: 'idName',
        tasks: [],
      );
    }
  }
}
