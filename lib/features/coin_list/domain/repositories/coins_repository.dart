import 'package:clean_architecture_app/features/coin_list/data/models/coins_response.dart';

abstract class CoinsRepository {
  Future<CoinsResponse> getCoinList();
}
