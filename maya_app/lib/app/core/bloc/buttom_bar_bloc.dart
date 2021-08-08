import 'package:flutter_bloc/flutter_bloc.dart';

enum ButtomBarEvent {
  changePage0,
  changePage1,
  changePage2,
}

class ButtomBarBloc extends Bloc<ButtomBarEvent, int> {
  ButtomBarBloc() : super(0);

  @override
  Stream<int> mapEventToState(ButtomBarEvent event) async* {
    switch (event) {
      case ButtomBarEvent.changePage0:
        yield 0;
        break;
      case ButtomBarEvent.changePage1:
        yield 1;
        break;
      case ButtomBarEvent.changePage2:
        yield 2;
        break;
    }
  }
}
