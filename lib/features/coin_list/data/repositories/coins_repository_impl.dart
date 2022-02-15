import 'package:clean_architecture_app/core/network/network_info.dart';
import 'package:clean_architecture_app/features/coin_list/data/datasources/coins_data_source.dart';
import 'package:clean_architecture_app/features/coin_list/data/datasources/coins_local_data_source.dart';
import 'package:clean_architecture_app/features/coin_list/data/models/crypto_coins_model.dart';
import 'package:clean_architecture_app/features/coin_list/domain/repositories/coins_repository.dart';
import '../../domain/entities/crypto_coins.dart';

class CoinsRepositoryImpl implements CoinsRepository {
  final CoinsDataSource coinsDataSource;
  final CoinsLocalDataSource coinsLocalDataSource;
  final NetworkInfo networkInfo;

  CoinsRepositoryImpl(
      {required this.coinsDataSource,
      required this.coinsLocalDataSource,
      required this.networkInfo});

  @override
  Future<CryptoCoins> getCoinList() async {
    if (await networkInfo.isConnected) {
      return await coinsDataSource.getCoinsData();
    } else {
      return await coinsLocalDataSource.getCoinsDataFromDb();
    }
  }

  @override
  Future<dynamic> saveCoinsData(CryptoCoins cryptoCoins) async {
    return await coinsLocalDataSource.saveCoinsData(cryptoCoins as CryptoCoinsModel);
  }
}
