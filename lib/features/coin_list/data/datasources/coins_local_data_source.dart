import 'package:clean_architecture_app/features/coin_list/data/models/coins_response.dart';
import 'package:hive/hive.dart';

abstract class CoinsLocalDataSource {
  Future<dynamic> saveCoinsData(CoinsResponse coinsResponse);

  Future<CoinsResponse> getCoinsDataFromDb();
}

class CoinsLocalDataSourceImpl implements CoinsLocalDataSource {
  final Box<dynamic> box;

  CoinsLocalDataSourceImpl({required this.box});

  @override
  Future<dynamic> saveCoinsData(CoinsResponse coinsResponse) async {
    await box.put('coinsResponse', coinsResponse);
  }

  @override
  Future<CoinsResponse> getCoinsDataFromDb() async =>
      await box.get('coinsResponse');
}
