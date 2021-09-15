import '../../domain/entities/task.dart';

class TaskModel extends Task {
  final bool? chekBoxM;
  final String? descriptionM;
  final String? typeM;
  final String? priorityM;

  TaskModel({
    this.chekBoxM,
    this.descriptionM,
    this.typeM,
    this.priorityM,
  }) : super(chekBoxM, descriptionM, typeM, priorityM);

  Map<String, dynamic> toMap() {
    return {
      'chekBox': chekBoxM,
      'description': descriptionM,
      'type': typeM,
      'priority': priorityM,
    };
  }

  List<TaskModel> toList(List result) {
    final List<TaskModel> _tasks = [];
    for (Map<String, dynamic> row in result) {
      final TaskModel _task = TaskModel(
        chekBoxM: row['chekBox'],
        descriptionM: row['description'],
        typeM: row['type'],
        priorityM: row['priority'],
      );
      _tasks.add(_task);
    }

    return _tasks;
  }
}
