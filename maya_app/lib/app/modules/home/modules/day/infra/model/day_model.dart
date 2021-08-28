import '../../domain/entities/day.dart';

class DayModel extends Day {
  String? name;
  List? tasks;
  List? leisures;
  List? all;

  DayModel({this.name, this.tasks, this.leisures, this.all})
      : super('', [], [], []);

  DayModel fromMap(Map<String, dynamic> map) {
    return DayModel(
      name: map['name'],
      tasks: map['tasks'],
      leisures: map['leisure'],
      all: map['tasks'] + map['leisure'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'tasks': tasks,
      'leisure': leisures,
    };
  }
}
