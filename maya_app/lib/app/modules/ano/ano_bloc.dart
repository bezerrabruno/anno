import 'package:bloc/bloc.dart';

enum AnoEvent {increment}

class AnoBloc extends Bloc<AnoEvent, int> {
  AnoBloc() : super(0);

  @override
  Stream<int> mapEventToState(AnoEvent event) async* {
    switch (event) {
      case AnoEvent.increment:
        yield state + 1;
        break;
    }
  }
}