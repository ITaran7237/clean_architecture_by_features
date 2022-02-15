import 'package:equatable/equatable.dart';
import 'crypto_coins_usd.dart';

class CryptoDisplayData extends Equatable {
  final CryptoCoinsUSD? usd;

  const CryptoDisplayData({this.usd});

  @override
  List<Object?> get props => [usd];

  @override
  bool get stringify => true;
}
