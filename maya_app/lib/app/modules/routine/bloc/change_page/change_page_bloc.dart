import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

enum ChangePageEvent {
  taskspage,
  timePage,
  goalsPage,
}

class ChangePageBloc extends Bloc<ChangePageEvent, int> {
  ChangePageBloc() : super(0);

  @override
  Stream<int> mapEventToState(ChangePageEvent event) async* {
    switch (event) {
      case ChangePageEvent.taskspage:
        Modular.to.pushNamed('../tasks/');
        yield 0;
        break;
      case ChangePageEvent.timePage:
        Modular.to.pushNamed('../time/');
        yield 1;
        break;
      case ChangePageEvent.goalsPage:
        Modular.to.pushNamed('../goals/');
        yield 2;
        break;
    }
  }
}
