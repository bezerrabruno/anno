import '../../external/datasource/get_day_datasource.dart';

import '../model/day_model.dart';

class DayRepository {
  final DayDatasouce datasouce;

  DayRepository(this.datasouce);

  Future findDay(String idName) async {
    try {
      var result = await datasouce.findDay(idName);
      return DayModel.fromMap(result);
    } catch (e) {
      return e.toString();
    }
  }

  Future updateDay(DayModel day) async {
    try {
      await datasouce.updateDay(day.idName!, day.toMap());
      return 'Task Criado Com Sucesso.';
    } catch (e) {
      //print(e);
      return 'Error.';
    }
  }
}
