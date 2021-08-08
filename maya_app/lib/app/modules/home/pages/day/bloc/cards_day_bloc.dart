import 'package:bloc/bloc.dart';

enum CardsDayEvent { updateCardDay }

class CardsDayBloc extends Bloc<CardsDayEvent, int> {
  CardsDayBloc() : super(0);

  @override
  Stream<int> mapEventToState(CardsDayEvent event) async* {
    switch (event) {
      case CardsDayEvent.updateCardDay:
        //FireStore().getAll();
        yield state + 1;
        break;
    }
  }
}
