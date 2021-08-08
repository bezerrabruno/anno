import 'package:bloc_test/bloc_test.dart';
import 'package:maya_app/app/modules/ano/ano_bloc.dart';

void main() {
  blocTest<AnoBloc, int>(
    'emits [1] when increment is added',
    build: () => AnoBloc(),
    act: (bloc) => bloc.add(AnoEvent.increment),
    expect: () => [1],
  );
}
