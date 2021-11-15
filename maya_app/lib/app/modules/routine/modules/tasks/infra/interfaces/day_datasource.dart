import 'package:maya_app/app/modules/routine/modules/tasks/domain/entities/answers_tasks.dart';

abstract class DayDatasource {
  const DayDatasource();

  Future findDay(String idName);

  Future updateDay(String idName, Map<String, dynamic> day);
}
