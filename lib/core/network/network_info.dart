import 'dart:async';
import 'package:cross_connectivity/cross_connectivity.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoImpl(this.connectivity);

  @override
  Future<bool> get isConnected async {
    return connectivity.isConnected.hasValue ? connectivity.isConnected.value : true;
  }
}
