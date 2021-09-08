import '../../domain/entities/task.dart';

class TaskModel extends Task {
  final bool? chekBox;
  final String? description;
  final String? type;
  final String? priority;

  TaskModel({
    this.chekBox,
    this.description,
    this.type,
    this.priority,
  }) : super(chekBox, description, type, priority);

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'type': type,
      'priority': priority,
      'chekBox': chekBox,
    };
  }

  List<TaskModel> toList(List result) {
    final List<TaskModel> _tasks = [];
    for (Map<String, dynamic> row in result) {
      final TaskModel _task = TaskModel(
        description: row['description'],
        type: row['type'],
        priority: row['priority'],
        chekBox: row['chekBox'],
      );
      _tasks.add(_task);
    }

    return _tasks;
  }
}
