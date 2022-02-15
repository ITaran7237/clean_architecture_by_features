import 'package:clean_architecture_app/features/coin_list/data/models/coin_details_model.dart';
import 'package:clean_architecture_app/features/coin_list/data/models/crypto_coins_model.dart';
import 'package:clean_architecture_app/features/coin_list/data/models/display_data_model.dart';
import 'package:clean_architecture_app/features/coin_list/domain/entities/crypto_coins_data.dart';
import 'package:drift/drift.dart';
import '../../../../core/database/coins_database.dart';
import '../models/coins_data_model.dart';
import '../models/coins_usd_model.dart';

abstract class CoinsLocalDataSource {
  Future<dynamic> saveCoinsData(CryptoCoinsModel cryptoCoins);

  Future<CryptoCoinsModel> getCoinsDataFromDb();
}

class CoinsLocalDataSourceImpl implements CoinsLocalDataSource {
  final Database database;

  CoinsLocalDataSourceImpl({required this.database});

  @override
  Future<dynamic> saveCoinsData(CryptoCoinsModel coinsResponse) async {
    var coins = await database.getAllCoins();
    if(coins.isEmpty) {
      coinsResponse.data?.forEach((item) async {
        await database.insertCoin(fillCoinsCompanion(item));
        await database.insertCoinsData(_fillCoinsUsdData(item));
      });
    } else {
      await database.deleteCoins();
      coinsResponse.data?.forEach((item) async {
        await database.insertCoin(fillCoinsCompanion(item));
        await database.insertCoinsData(_fillCoinsUsdData(item));
      });
    }
  }

  CoinsCompanion fillCoinsCompanion(CryptoCoinsData item) {
    return CoinsCompanion(
        name: Value(item.coinInfo?.name ?? ''),
        coinId: Value(int.parse(item.coinInfo?.id ?? '0')),
        fullName: Value(item.coinInfo?.fullName ?? ''),
        marketPrice: Value(item.display?.usd?.price ?? ''));
  }

  CoinsUsdDataCompanion _fillCoinsUsdData(CryptoCoinsData item) {
    return CoinsUsdDataCompanion(
        coinId: Value(int.parse(item.coinInfo?.id ?? '0')),
        type: Value(item.display?.usd?.type ?? ''),
        market: Value(item.display?.usd?.market ?? ''),
        fromSymbol: Value(item.display?.usd?.fromSymbol ?? ''),
        toSymbol: Value(item.display?.usd?.toSymbol ?? ''),
        flags: Value(item.display?.usd?.flags ?? ''),
        price: Value(item.display?.usd?.price ?? ''),
        lastUpdate: Value(item.display?.usd?.lastUpdate ?? ''),
        lastVolume: Value(item.display?.usd?.lastVolume ?? ''),
        lastVolumeTo: Value(item.display?.usd?.lastVolumeTo ?? ''),
        lastTradeIn: Value(item.display?.usd?.lastTradeIn ?? ''),
        lastMarket: Value(item.display?.usd?.lastMarket ?? ''),
        openDay: Value(item.display?.usd?.openDay ?? ''),
        highDay: Value(item.display?.usd?.highDay ?? ''),
        lowDay: Value(item.display?.usd?.lowDay ?? ''),
        open24hour: Value(item.display?.usd?.open24hour ?? ''),
        high24hour: Value(item.display?.usd?.high24hour ?? ''),
        low24hour: Value(item.display?.usd?.low24hour ?? ''),
        topTierVolume24hour:
            Value(item.display?.usd?.topTierVolume24hour ?? ''),
        topTierVolume24hourTo:
            Value(item.display?.usd?.topTierVolume24hourTo ?? ''),
        imageUrl: Value(item.display?.usd?.imageUrl ?? ''));
  }

  @override
  Future<CryptoCoinsModel> getCoinsDataFromDb() async {
    var coins = await database.getAllCoins();
    var coinsDetails = await database.getAllCoinsDetails();
    List<CoinsDataModel>? result = [];
    coins.forEach((item) {
      var selectedCoin =
          coinsDetails.firstWhere((element) => element.id == item.id);
      if (selectedCoin != null) {
        result.add(CoinsDataModel(
            coinInfo: CoinDetailsModel(
                id: item.id.toString(),
                name: item.name,
                fullName: item.fullName),
            display: DisplayDataModel(
                usd: CoinsUSDModel.fromJsonDB(selectedCoin.toJson()))));
      }
    });
    return CryptoCoinsModel(data: result);
  }
}
