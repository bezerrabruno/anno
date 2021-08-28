import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

enum PageHomeEvent {
  changePage0,
  changePage1,
}

class PageHomeBloc extends Bloc<PageHomeEvent, int> {
  PageHomeBloc() : super(0);

  @override
  Stream<int> mapEventToState(PageHomeEvent event) async* {
    switch (event) {
      case PageHomeEvent.changePage0:
        Modular.to.pushNamed('../day');
        yield 0;
        break;
      case PageHomeEvent.changePage1:
        Modular.to.pushNamed('../timer');
        yield 1;
        break;
    }
  }
}
