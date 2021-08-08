import 'package:bloc_test/bloc_test.dart';
import 'package:maya_app/app/modules/home/pages/timer/timer_bloc.dart';

void main() {
  blocTest<TimerBloc, int>(
    'emits [1] when increment is added',
    build: () => TimerBloc(),
    act: (bloc) => bloc.add(TimerEvent.increment),
    expect: () => [1],
  );
}
