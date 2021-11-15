import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'page_routine_event.dart';

class PageRoutineBloc extends Bloc<PageRoutineEvent, int> {
  PageRoutineBloc() : super(0) {
    on<EPRChangePage>(changePage);
  }

  void changePage(event, emit) {
    switch (event.page) {
      case 0:
        Modular.to.pushNamed('../tasks/');
        emit(0);
        break;
      case 1:
        Modular.to.pushNamed('../time/');
        emit(1);
        break;
      case 2:
        Modular.to.pushNamed('../goals/');
        emit(2);
        break;
    }
  }
}
