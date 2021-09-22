import 'package:bloc/bloc.dart';

enum AnnoEvent { increment }

class AnnoBloc extends Bloc<AnnoEvent, int> {
  AnnoBloc() : super(0);

  @override
  Stream<int> mapEventToState(AnnoEvent event) async* {
    switch (event) {
      case AnnoEvent.increment:
        yield state + 1;
        break;
    }
  }
}
