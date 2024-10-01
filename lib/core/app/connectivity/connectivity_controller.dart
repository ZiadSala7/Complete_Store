import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();
  static final ConnectivityController instance = ConnectivityController._();
  ValueNotifier<bool> isConnected = ValueNotifier(true);

  Future<void> init() async {
    var result = await Connectivity().checkConnectivity();
    isInternetConnected(result);
    Connectivity().onConnectivityChanged.listen(isInternetConnected);
  }

  bool isInternetConnected(var result) {
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      isConnected = ValueNotifier(true);
      return true;
    } else {
      isConnected = ValueNotifier(false);
      return false;
    }
  }
}
