import 'package:connectivity_plus/connectivity_plus.dart';

extension ConnectivityResultX on ConnectivityResult {
  bool get isConnected {
    return this == ConnectivityResult.mobile ||
        this == ConnectivityResult.wifi ||
        this == ConnectivityResult.ethernet;
  }
}
