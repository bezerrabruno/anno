import '../../infra/repositories/get_day_repository.dart';

import '../entities/day.dart';

class GetDay {
  final GetDayRepository services;

  const GetDay(this.services);

  Future getDay(String day) async {
    var result = await services.getDay(day);
    if (result is Day) {
      return result;
    } else {
      return 'Error';
    }
  }
}
