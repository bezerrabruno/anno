import 'package:bloc/bloc.dart';

enum DayEvent {increment}

class DayBloc extends Bloc<DayEvent, int> {
  DayBloc() : super(0);

  @override
  Stream<int> mapEventToState(DayEvent event) async* {
    switch (event) {
      case DayEvent.increment:
        yield state + 1;
        break;
    }
  }
}