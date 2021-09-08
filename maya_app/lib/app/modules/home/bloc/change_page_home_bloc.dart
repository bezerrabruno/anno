import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChangePageHomeBloc extends Bloc<int, int> {
  ChangePageHomeBloc() : super(0);

  @override
  Stream<int> mapEventToState(int event) async* {
    switch (event) {
      case 0:
        Modular.to.pushNamed('../day');
        yield 0;
        break;
    }
  }
}
