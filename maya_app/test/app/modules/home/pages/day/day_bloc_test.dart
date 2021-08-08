import 'package:bloc_test/bloc_test.dart';
import 'package:maya_app/app/modules/home/pages/day/bloc/cards_day_bloc.dart';

void main() {
  blocTest<CardsDayBloc, int>(
    'emits [1] when increment is added',
    build: () => CardsDayBloc(),
    act: (bloc) => bloc.add(CardsDayEvent.updateCardDay),
    expect: () => [1],
  );
}
