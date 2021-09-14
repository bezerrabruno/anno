import 'package:bloc/bloc.dart';

import 'update_day_state.dart';

import '../../../domain/usecases/update_day_by_day.dart';
import '../../../infra/model/day_model.dart';

class UpdateDayBloc extends Bloc<DayModel, UpdateDayState> {
  final UpdateDayByDay usecase;

  UpdateDayBloc(this.usecase) : super(const StateUpdateDayLoading());

  @override
  Stream<UpdateDayState> mapEventToState(DayModel event) async* {
    yield const StateUpdateDayLoading();
    var result = await usecase.updateDay(event);
    yield StateUpdateDayFinalize(message: result);
  }
}
