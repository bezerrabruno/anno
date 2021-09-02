import 'package:maya_app/app/modules/home/modules/tasks/domain/entities/task.dart';

import '../../domain/entities/task.dart';

class TaskModel extends Task {
  int? id;
  String? type;
  String? tag;
  String? description;

  TaskModel({
    this.id,
    this.type,
    this.tag,
    this.description,
  }) : super(0, '', '', '');

  TaskModel fromMap(Map<String, dynamic> map) {
    return TaskModel(
      type: map['type'],
      tag: map['tag'],
      description: map['description'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'tag': tag,
      'description': description,
    };
  }

  List<TaskModel> toList(List result) {
    final List<TaskModel> _tasks = [];
    for (Map<String, dynamic> row in result) {
      final TaskModel _task = TaskModel(
        type: row['type'],
        tag: row['tag'],
        description: row['description'],
      );
      _tasks.add(_task);
    }

    return _tasks;
  }
}
