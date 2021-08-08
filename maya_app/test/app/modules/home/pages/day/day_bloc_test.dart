import 'package:bloc_test/bloc_test.dart';
import 'package:maya_app/app/modules/home/pages/day/day_bloc.dart';

void main() {
  blocTest<DayBloc, int>(
    'emits [1] when increment is added',
    build: () => DayBloc(),
    act: (bloc) => bloc.add(DayEvent.increment),
    expect: () => [1],
  );
}
