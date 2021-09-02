import 'task.dart';

class Day {
  final int? id;
  final String? name;
  final List<Task>? routine;
  final List<Task>? temporary;
  final List<Task>? finalize;
  final List<Task>? all;

  Day(
    this.id,
    this.name,
    this.routine,
    this.temporary,
    this.finalize,
    this.all,
  );
}
