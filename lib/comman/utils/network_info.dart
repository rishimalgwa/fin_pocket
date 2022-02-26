import 'package:connectivity/connectivity.dart';

abstract class NetwrokInfo {
  Future<bool> isConnected();
}

class NetworkInfoImpl implements NetwrokInfo {
  @override
  Future<bool> isConnected() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    }
    return true;
  }
}
