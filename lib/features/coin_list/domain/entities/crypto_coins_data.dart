import 'package:equatable/equatable.dart';
import 'crypto_coins_details.dart';
import 'crypto_display_data.dart';

class CryptoCoinsData extends Equatable {
  final CryptoCoinDetails? coinInfo;
  final CryptoDisplayData? display;

  const CryptoCoinsData({this.coinInfo, this.display});

  @override
  List<Object?> get props => [coinInfo, display];

  @override
  bool get stringify => true;
}
