import '../../infra/model/day_model.dart';
import '../../infra/repositories/day_repository.dart';

class UpdateDayByDay {
  final DayRepository repository;

  const UpdateDayByDay(this.repository);

  Future updateDay(DayModel day) async {
    final updateResult = await repository.updateDay(day);

    return updateResult;
  }
}
