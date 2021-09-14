import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

enum ChangePageEvent {
  dayPage,
  calendarPage,
  timerPage,
  timerHistPage,
  notesPage,
}

class ChangePageBloc extends Bloc<ChangePageEvent, int> {
  ChangePageBloc() : super(0);

  @override
  Stream<int> mapEventToState(ChangePageEvent event) async* {
    switch (event) {
      case ChangePageEvent.dayPage:
        Modular.to.pushNamed('../days');
        yield 0;
        break;
      case ChangePageEvent.calendarPage:
        Modular.to.pushNamed('../days');
        yield 0;
        break;
      case ChangePageEvent.timerPage:
        Modular.to.pushNamed('../days');
        yield 1;
        break;
      case ChangePageEvent.timerHistPage:
        Modular.to.pushNamed('../days');
        yield 1;
        break;
      case ChangePageEvent.notesPage:
        Modular.to.pushNamed('../days');
        yield 2;
        break;
    }
  }
}
