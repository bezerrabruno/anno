import '../../domain/entities/day.dart';

class DayModel extends Day {
  String? name;
  List? tasks;
  List? leisure;

  DayModel({this.name, this.tasks, this.leisure}) : super('', [], []);

  DayModel fromMap(Map<String, dynamic> map) {
    return DayModel(
      name: map['name'],
      tasks: map['tasks'],
      leisure: map['leisure'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'tasks': tasks,
      'leisure': leisure,
    };
  }
}
