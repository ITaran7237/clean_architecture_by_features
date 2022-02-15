import 'package:clean_architecture_app/core/usecases/usecase.dart';
import 'package:clean_architecture_app/features/coin_list/domain/repositories/coins_repository.dart';
import '../entities/crypto_coins.dart';

class GetCoinList implements UseCase<CryptoCoins, NoParams> {
  final CoinsRepository repository;

  GetCoinList(this.repository);

  @override
  Future<CryptoCoins> call(NoParams params) async =>
      await repository.getCoinList();
}
