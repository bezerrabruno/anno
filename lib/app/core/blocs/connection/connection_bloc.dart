import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'connection_event.dart';

class ConnectionBloc extends Bloc<ConnectionEvent, String> {
  ConnectionBloc() : super('none') {
    on<ECEConnection>(conection);
  }
  Future<void> conection(event, emit) async {
    final connection = await Connectivity().checkConnectivity();

    if (connection == ConnectivityResult.none) {
      emit('none');
    } else if (connection == ConnectivityResult.ethernet) {
      emit('ethernet');
    } else if (connection == ConnectivityResult.mobile) {
      emit('mobile');
    } else if (connection == ConnectivityResult.wifi) {
      emit('wifi');
    }
  }
}
