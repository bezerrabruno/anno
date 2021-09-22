import '../../domain/entities/task.dart';

class TaskModel extends Task {
  final bool? chekBoxM;
  final String? descriptionM;
  final String? priorityM;

  TaskModel({
    this.chekBoxM,
    this.descriptionM,
    this.priorityM,
  }) : super(chekBoxM, descriptionM, priorityM);

  Map<String, dynamic> toMap() {
    return {
      'chekBox': chekBoxM,
      'description': descriptionM,
      'priority': priorityM,
    };
  }

  List<TaskModel> toList(List result) {
    final List<TaskModel> _tasks = [];
    for (Map<String, dynamic> row in result) {
      final TaskModel _task = TaskModel(
        chekBoxM: row['chekBox'],
        descriptionM: row['description'],
        priorityM: row['priority'],
      );
      _tasks.add(_task);
    }

    return _tasks;
  }
}
