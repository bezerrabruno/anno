import '../../external/datasource/get_day_datasource.dart';

import '../model/day_model.dart';

class GetDayRepository {
  final GetDayDatasouce datasouce;

  GetDayRepository(this.datasouce);

  Future getDay(String day) async {
    try {
      var result = await datasouce.getDay(day);
      return DayModel().fromMap(result);
    } catch (e) {
      return e;
    }
  }
}
