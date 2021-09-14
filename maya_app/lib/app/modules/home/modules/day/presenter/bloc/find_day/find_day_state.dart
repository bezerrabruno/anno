import 'package:maya_app/app/modules/home/modules/day/infra/model/day_model.dart';

class FindDayState {
  const FindDayState();
}

class StateFindDayLoading implements FindDayState {
  const StateFindDayLoading();
}

class StateFindDaySuccess extends FindDayState {
  final DayModel day;

  const StateFindDaySuccess({
    required this.day,
  });
}

class StateFindDayFailure extends FindDayState {
  final String message;

  const StateFindDayFailure({
    required this.message,
  });
}
