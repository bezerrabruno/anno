import '../../domain/entities/task.dart';

class TaskModel extends Task {
  TaskModel() : super(checkBox: false, description: '', priority: '');

  static Map<String, dynamic> toMap(Task task) {
    return {
      'checkBox': task.checkBox,
      'description': task.description,
      'priority': task.priority,
    };
  }

  static List<Task> toList(List result) {
    final List<Task> _tasks = [];
    for (Map<String, dynamic> row in result) {
      final Task _task = Task(
        checkBox: row['checkBox'],
        description: row['description'],
        priority: row['priority'],
      );
      _tasks.add(_task);
    }
    return _tasks;
  }
}
