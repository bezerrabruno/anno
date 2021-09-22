import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionDriver {
  Future<dynamic> checkConnection() async {
    var result = await (Connectivity().checkConnectivity());
    return result;
  }
}
