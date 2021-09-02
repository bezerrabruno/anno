import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

enum ChangePageHomeEvent {
  changePage0,
  changePage1,
}

class ChangePageHomeBloc extends Bloc<ChangePageHomeEvent, int> {
  ChangePageHomeBloc() : super(0);

  @override
  Stream<int> mapEventToState(ChangePageHomeEvent event) async* {
    switch (event) {
      case ChangePageHomeEvent.changePage0:
        Modular.to.pushNamed('../day');
        yield 0;
        break;
      case ChangePageHomeEvent.changePage1:
        Modular.to.pushNamed('../timer');
        yield 1;
        break;
    }
  }
}
