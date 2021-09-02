import 'package:maya_app/app/modules/home/modules/tasks/domain/entities/day.dart';

import '../../external/datasource/get_day_datasource.dart';

import '../model/day_model.dart';

class DayRepository {
  final DayDatasouce datasouce;

  DayRepository(this.datasouce);

  Future findDay(String nameDay) async {
    try {
      var result = await datasouce.findDay(nameDay);
      return DayModel().fromMap(result);
    } catch (e) {
      return e.toString();
    }
  }

  Future updateDay(Day day) async {
    try {
      await datasouce.updateDay(
          day.name!,
          DayModel(
            name: day.name,
            routine: day.routine,
            temporary: day.temporary,
            finalize: day.finalize,
          ).toMap());
      return true;
    } catch (e) {
      return false;
    }
  }
}
