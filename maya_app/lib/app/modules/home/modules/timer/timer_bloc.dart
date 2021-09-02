import 'package:bloc/bloc.dart';

enum TimerEvent {increment}

class TimerBloc extends Bloc<TimerEvent, int> {
  TimerBloc() : super(0);

  @override
  Stream<int> mapEventToState(TimerEvent event) async* {
    switch (event) {
      case TimerEvent.increment:
        yield state + 1;
        break;
    }
  }
}