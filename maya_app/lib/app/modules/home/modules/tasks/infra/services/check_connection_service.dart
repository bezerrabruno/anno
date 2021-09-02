import 'package:connectivity_plus/connectivity_plus.dart';

import '../../external/driver/check_connection_driver.dart';
import '../../domain/entities/connection.dart';
import '../../domain/errors/failures.dart';

class ConnectionService {
  final ConnectionDriver driver;

  ConnectionService(
    this.driver,
  );

  Future<dynamic> checkConnection() async {
    try {
      final ConnectivityResult connectionResult =
          await driver.checkConnection();
      switch (connectionResult) {
        case ConnectivityResult.mobile:
          return Connection();
        case ConnectivityResult.wifi:
          return Connection();
        case ConnectivityResult.ethernet:
          return Connection();
        case ConnectivityResult.none:
          return ConnectionFailure();
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
