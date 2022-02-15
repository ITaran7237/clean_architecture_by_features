import '../entities/crypto_coins.dart';

abstract class CoinsRepository {
  Future<CryptoCoins> getCoinList();

  Future<dynamic> saveCoinsData(CryptoCoins coinsResponse);
}
