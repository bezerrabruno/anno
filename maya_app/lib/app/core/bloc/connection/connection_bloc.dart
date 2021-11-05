import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'connection_event.dart';

class ConnectionBloc extends Bloc<ConnectionEvent, String> {
  ConnectionBloc() : super('null') {
    on<Connection>(conection);
  }
  void conection(event, emit) {
    if (event.connection == ConnectivityResult.none) {
      emit('none');
    } else if (event.connection == ConnectivityResult.ethernet) {
      emit('ethernet');
    } else if (event.connection == ConnectivityResult.mobile) {
      emit('mobile');
    } else if (event.connection == ConnectivityResult.wifi) {
      emit('wifi');
    }
  }
}
