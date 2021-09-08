import 'package:bloc/bloc.dart';
import 'package:maya_app/app/modules/home/modules/days/infra/model/day_model.dart';

import 'find_day_state.dart';

import '../../../domain/usecases/find_day_by_name.dart';

class FindDayBloc extends Bloc<String, FindDayState> {
  final FindDayByIdName usecase;

  FindDayBloc(this.usecase) : super(StateFindDayLoading());

  @override
  Stream<FindDayState> mapEventToState(String event) async* {
    yield StateFindDayLoading();

    var result = await usecase.findDay(event);

    if (result is DayModel) {
      
      yield StateFindDaySuccess(day: result);
    } else {
      yield StateFindDayFailure(message: result);
    }
  }
}
