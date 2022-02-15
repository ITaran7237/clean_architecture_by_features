import 'package:equatable/equatable.dart';

import 'crypto_coins_data.dart';

class CryptoCoins extends Equatable {
  final List<CryptoCoinsData>? data;

  const CryptoCoins({this.data});

  @override
  List<Object?> get props => [data];

  @override
  bool get stringify => true;
}
