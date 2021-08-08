import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

enum ButtomBarEvent {
  changePage0,
  changePage1,
}

class ButtomBarBloc extends Bloc<ButtomBarEvent, int> {
  ButtomBarBloc() : super(0);

  @override
  Stream<int> mapEventToState(ButtomBarEvent event) async* {
    switch (event) {
      case ButtomBarEvent.changePage0:
        Modular.to.pushNamed('../day');
        yield 0;
        break;
      case ButtomBarEvent.changePage1:
        Modular.to.pushNamed('../timer');
        yield 1;
        break;
    }
  }
}
