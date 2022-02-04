import 'package:clean_architecture_app/features/coin_list/data/datasources/coins_data_source.dart';
import 'package:clean_architecture_app/features/coin_list/data/models/coins_response.dart';
import 'package:clean_architecture_app/features/coin_list/domain/repositories/coins_repository.dart';

class CoinsRepositoryImpl implements CoinsRepository {
  final CoinsDataSource coinsDataSource;

  CoinsRepositoryImpl({required this.coinsDataSource});

  @override
  Future<CoinsResponse> getCoinList() async {
    return await coinsDataSource.getCoinsData();
  }
}
